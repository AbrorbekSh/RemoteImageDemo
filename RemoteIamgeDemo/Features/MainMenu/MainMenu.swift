import SwiftUI

// MARK: - MainMenu

struct MainMenu: View {
    // MARK: Properties

    @Binding var path: NavigationPath
    @Binding var showClearDialog: Bool

    // MARK: Body

    var body: some View {
        VStack(spacing: 28) {
            LottieActionButton(name: "iceCream.lottie", size: 140) {
                path.append(ContentView.Route.waterfallImageView)
            }

            LottieActionButton(name: "loading.lottie", size: 140) {
                path.append(ContentView.Route.loadableImageView)
            }

            LottieActionButton(name: "cache.lottie", size: 140) {
                showClearDialog = true
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.softBlue)
    }
}
