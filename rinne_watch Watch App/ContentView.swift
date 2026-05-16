import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var session: SessionManager
    @State private var showSettings = false
    @State private var breathing = false
    @State private var showSplash = true

    static let background = Color(red: 0x0A / 255, green: 0x0A / 255, blue: 0x0F / 255)
    static let foreground = Color(red: 0xE8 / 255, green: 0xE0 / 255, blue: 0xCC / 255)

    var body: some View {
        ZStack {
            Self.background.ignoresSafeArea()

            if let imageName = session.backgroundStyle.imageName {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.4).ignoresSafeArea())
                    .allowsHitTesting(false)
            }

            SutraRingBackground()
                .allowsHitTesting(false)
                .ignoresSafeArea()

            VStack(spacing: 8) {
                Spacer(minLength: 0)

                ZStack {
                    VStack(spacing: 0) {
                        Text(session.currentEntry.char)
                            .font(AppFont.serifThin(size: 42))
                            .foregroundStyle(Self.foreground)

                        Text(session.currentEntry.ruby)
                            .font(AppFont.serifThin(size: 14))
                            .tracking(1)
                            .foregroundStyle(Self.foreground.opacity(0.85))
                            .padding(.top, -8)
                    }
                    .id(session.currentIndex)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition.opacity.animation(.easeInOut(duration: 0.6)),
                            removal: AnyTransition.opacity.animation(.easeInOut(duration: 0.4))
                        )
                    )
                }
                .opacity(breathing ? 1.0 : 0.75)
                .animation(.easeInOut(duration: 3.5).repeatForever(autoreverses: true), value: breathing)

                Spacer(minLength: 0)

                if session.isRunning {
                    Text(timeString(session.remainingSeconds))
                        .font(.system(size: 12, weight: .regular, design: .monospaced))
                        .foregroundStyle(Self.foreground.opacity(0.45))
                } else {
                    HStack(spacing: 12) {
                        Button {
                            session.start()
                        } label: {
                            Image(systemName: "play.fill")
                                .font(.system(size: 16))
                        }
                        .buttonStyle(.plain)
                        .foregroundStyle(Self.foreground)

                        Button {
                            showSettings = true
                        } label: {
                            Image(systemName: "gearshape")
                                .font(.system(size: 16))
                        }
                        .buttonStyle(.plain)
                        .foregroundStyle(Self.foreground.opacity(0.7))
                    }
                    .padding(.bottom, 4)
                }
            }
            .padding()

            if showSplash {
                SplashView()
                    .transition(.opacity)
                    .zIndex(10)
            }
        }
        .onAppear {
            breathing = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation(.easeInOut(duration: 2.0)) {
                    showSplash = false
                }
            }
        }
        .onTapGesture {
            if session.isRunning {
                session.stop()
            }
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .environmentObject(session)
        }
    }

    private func timeString(_ seconds: Int) -> String {
        let m = seconds / 60
        let s = seconds % 60
        return String(format: "%02d:%02d", m, s)
    }
}

#Preview {
    ContentView()
        .environmentObject(SessionManager())
}
