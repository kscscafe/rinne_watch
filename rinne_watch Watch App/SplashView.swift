import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            ContentView.background.ignoresSafeArea()

            VStack(spacing: 4) {
                Text("輪廻")
                    .font(AppFont.serifThin(size: 22))
                    .foregroundStyle(ContentView.foreground)

                Text("Rinne")
                    .font(AppFont.serifThin(size: 14))
                    .tracking(2)
                    .foregroundStyle(ContentView.foreground.opacity(0.85))
            }
        }
    }
}

#Preview {
    SplashView()
}
