import SwiftUI

struct SutraRingBackground: View {
    @EnvironmentObject private var session: SessionManager

    @State private var outerAngle: Double = 0
    @State private var middleAngle: Double = 0
    @State private var innerAngle: Double = 0

    @State private var innerChars: [String] = []
    @State private var middleChars: [String] = []
    @State private var outerChars: [String] = []
    @State private var currentGroup: Int = -1
    @State private var ringsOpacity: Double = 1.0

    private let tick = Timer.publish(every: 1.0 / 30.0, on: .main, in: .common).autoconnect()

    var body: some View {
        GeometryReader { geo in
            let minDim = min(geo.size.width, geo.size.height)
            ZStack {
                SutraRing(chars: outerChars, radius: minDim * 0.46, fontSize: 12, opacity: 0.90, angle: outerAngle)
                SutraRing(chars: middleChars, radius: minDim * 0.33, fontSize: 10, opacity: 0.85, angle: middleAngle)
                SutraRing(chars: innerChars, radius: minDim * 0.20, fontSize: 7, opacity: 0.80, angle: innerAngle)
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .opacity(ringsOpacity)
        }
        .onAppear {
            syncRings(force: true)
        }
        .onReceive(tick) { _ in
            // 30FPS で角度を直接更新（回転はリセットせず継続）
            outerAngle  += 6.0  / 30.0    // 時計回り,  1周  60秒
            middleAngle -= 4.5 / 30.0     // 反時計回り,1周  80秒
            innerAngle  += 7.2 / 30.0     // 時計回り,  1周  50秒
            if outerAngle  >=  360 { outerAngle  -= 360 }
            if middleAngle <= -360 { middleAngle += 360 }
            if innerAngle  >=  360 { innerAngle  -= 360 }
        }
        .onChange(of: session.currentIndex) { _, _ in
            syncRings(force: false)
        }
    }

    /// 中央が今いる段に合わせてリングを 外=今/中=次/内=その次 に更新
    private func syncRings(force: Bool) {
        let g = SutraData.groupIndex(forCharacterIndex: session.currentIndex)
        guard force || g != currentGroup else { return }

        if force {
            // 初回（onAppear）はフェードなしで即時セット
            currentGroup = g
            outerChars  = SutraData.groupChars(at: g)
            middleChars = SutraData.groupChars(at: g + 1)
            innerChars  = SutraData.groupChars(at: g + 2)
            ringsOpacity = 1.0
            return
        }

        // 段が変わった瞬間：一度フェードアウトして文字を差し替え、再びフェードイン
        withAnimation(.easeInOut(duration: 0.5)) {
            ringsOpacity = 0.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            currentGroup = g
            outerChars  = SutraData.groupChars(at: g)
            middleChars = SutraData.groupChars(at: g + 1)
            innerChars  = SutraData.groupChars(at: g + 2)
            withAnimation(.easeInOut(duration: 0.6)) {
                ringsOpacity = 1.0
            }
        }
    }
}

private struct SutraRing: View {
    let chars: [String]
    let radius: CGFloat
    let fontSize: CGFloat
    let opacity: Double
    let angle: Double

    var body: some View {
        let color = inkColor.opacity(opacity)
        ZStack {
            ForEach(0..<chars.count, id: \.self) { i in
                Text(chars[i])
                    .font(AppFont.serifThin(size: fontSize))
                    .foregroundStyle(color)
                    .offset(y: -radius)
                    .rotationEffect(.degrees(Double(i) / Double(max(chars.count, 1)) * 360))
            }
        }
        .rotationEffect(.degrees(angle))
    }
}

private let inkColor = Color(red: 0xE8 / 255, green: 0xE0 / 255, blue: 0xCC / 255)

#Preview {
    ZStack {
        Color(red: 0x0A / 255, green: 0x0A / 255, blue: 0x0F / 255).ignoresSafeArea()
        SutraRingBackground()
            .environmentObject(SessionManager())
    }
}
