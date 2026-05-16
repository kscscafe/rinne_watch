import SwiftUI

struct SettingsView: View {
    @EnvironmentObject private var session: SessionManager
    @Environment(\.dismiss) private var dismiss

    private let bpmRange: ClosedRange<Double> = 40...75
    private let durations: [Int] = [5, 10, 15, 20, 30]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 14) {
                bpmRow(title: "開始bpm", value: $session.startBpm)
                bpmRow(title: "終了bpm", value: $session.endBpm)
                durationRow
                backgroundRow
                Button("閉じる") { dismiss() }
                    .buttonStyle(.bordered)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 4)
            }
            .padding()
        }
        .navigationTitle("設定")
    }

    private func bpmRow(title: String, value: Binding<Double>) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(title)
                    .font(.footnote)
                Spacer()
                Text("\(Int(value.wrappedValue))")
                    .font(.footnote.monospacedDigit())
            }
            Stepper(
                "",
                value: Binding(
                    get: { value.wrappedValue },
                    set: { value.wrappedValue = min(max($0, bpmRange.lowerBound), bpmRange.upperBound) }
                ),
                in: bpmRange,
                step: 1
            )
            .labelsHidden()
        }
    }

    private var durationRow: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("オートオフ")
                .font(.footnote)
            Picker("オートオフ", selection: $session.durationMinutes) {
                ForEach(durations, id: \.self) { min in
                    Text("\(min)分").tag(min)
                }
            }
            .labelsHidden()
            .pickerStyle(.navigationLink)
        }
    }

    private var backgroundRow: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("背景")
                .font(.footnote)
            Picker("背景", selection: $session.backgroundStyle) {
                ForEach(BackgroundStyle.allCases) { style in
                    Text(style.label).tag(style)
                }
            }
            .labelsHidden()
            .pickerStyle(.navigationLink)
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(SessionManager())
}
