import SwiftUI
import RemoteImage

struct ContentView: View {
    enum Route: Hashable {
        case waterfallImageView
        case loadableImageView
    }

    @State private var path = NavigationPath()
    @State private var showClearDialog = false

    var body: some View {
        NavigationStack(path: $path) {
            MainMenu(path: $path, showClearDialog: $showClearDialog)
                .navigationDestination(for: Route.self) { route in
                    destinationView(for: route)
                }
        }
        .confirmationDialog("Clear cache?",
                            isPresented: $showClearDialog,
                            titleVisibility: .visible) {
            confirmationDialogButtons
        }
    }

    @ViewBuilder
    private func destinationView(for route: Route) -> some View {
        switch route {
        case .waterfallImageView:
            WaterfallImageView(imageURLs: SampleData.validGalleryImageURLs, columnCount: 2)
        case .loadableImageView:
            LoadableImageView()
        }
    }

    private var confirmationDialogButtons: some View {
        Group {
            Button("Clear", role: .destructive) {
                Task {
                    try? await TieredImageCache.shared.clearCache()
                }
            }
            Button("Cancel", role: .cancel) { }
        }
    }
}
