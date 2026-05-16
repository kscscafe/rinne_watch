import Foundation
import SwiftUI
import WatchKit

@MainActor
final class SessionManager: NSObject, ObservableObject, WKExtendedRuntimeSessionDelegate {
    @Published var currentIndex: Int = 0
    @Published var isRunning: Bool = false
    @Published var remainingSeconds: Int = 0

    @AppStorage("startBpm") var startBpm: Double = 60
    @AppStorage("endBpm") var endBpm: Double = 50
    @AppStorage("durationMinutes") var durationMinutes: Int = 10
    @AppStorage("backgroundStyle") var backgroundStyle: BackgroundStyle = .none

    private var timer: Timer?
    private var sessionStart: Date?
    private var sessionEnd: Date?
    private var nextBeatAt: Date?
    private var extendedSession: WKExtendedRuntimeSession?

    var currentEntry: RubyChar {
        let entries = SutraData.entries
        guard !entries.isEmpty else { return RubyChar(char: "", ruby: "") }
        return entries[currentIndex % entries.count]
    }

    var currentCharacter: String { currentEntry.char }

    func toggle() {
        if isRunning { stop() } else { start() }
    }

    func start() {
        guard !isRunning else { return }
        isRunning = true
        currentIndex = 0

        let now = Date()
        sessionStart = now
        let total = Double(max(1, durationMinutes)) * 60
        sessionEnd = now.addingTimeInterval(total)
        remainingSeconds = Int(total)

        let initialInterval = 60.0 / clampedBpm(startBpm)
        nextBeatAt = now.addingTimeInterval(initialInterval)

        let session = WKExtendedRuntimeSession()
        session.delegate = self
        session.start()
        extendedSession = session

        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { [weak self] _ in
            Task { @MainActor in self?.tick() }
        }
    }

    func stop() {
        timer?.invalidate()
        timer = nil
        sessionStart = nil
        sessionEnd = nil
        nextBeatAt = nil
        remainingSeconds = 0
        isRunning = false
        extendedSession?.invalidate()
        extendedSession = nil
    }

    private func tick() {
        guard let start = sessionStart,
              let end = sessionEnd,
              let nextBeat = nextBeatAt else { return }

        let now = Date()
        remainingSeconds = max(0, Int(end.timeIntervalSince(now)))

        if now >= end {
            stop()
            return
        }

        if now >= nextBeat {
            advance()
            let total = end.timeIntervalSince(start)
            let elapsed = now.timeIntervalSince(start)
            let progress = min(1.0, max(0.0, elapsed / total))
            let bpm = clampedBpm(startBpm + (endBpm - startBpm) * progress)
            nextBeatAt = now.addingTimeInterval(60.0 / bpm)
        }
    }

    private func advance() {
        let count = SutraData.entries.count
        guard count > 0 else { return }
        currentIndex = (currentIndex + 1) % count
        playThud()
    }

    private func playThud() {
        WKInterfaceDevice.current().play(.directionDown)
    }

    private func clampedBpm(_ value: Double) -> Double {
        min(max(value, 30), 120)
    }

    nonisolated func extendedRuntimeSessionDidStart(_ extendedRuntimeSession: WKExtendedRuntimeSession) {}

    nonisolated func extendedRuntimeSessionWillExpire(_ extendedRuntimeSession: WKExtendedRuntimeSession) {
        Task { @MainActor in self.stop() }
    }

    nonisolated func extendedRuntimeSession(_ extendedRuntimeSession: WKExtendedRuntimeSession,
                                            didInvalidateWith reason: WKExtendedRuntimeSessionInvalidationReason,
                                            error: Error?) {
        Task { @MainActor in
            self.extendedSession = nil
        }
    }
}
