import SwiftUI
import RemoteImage

struct ContentView: View {
    // MARK: - Navigation

    enum Route: Hashable {
        case waterfallImageView
        case loadableImageView
    }

    @State private var path = NavigationPath()
    @State private var showClearDialog = false

    // MARK: - Body

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

    // MARK: - Destination View

    @ViewBuilder
    private func destinationView(for route: Route) -> some View {
        switch route {
        case .waterfallImageView:
            WaterfallImageView(imageURLs: SampleData.validGalleryImageURLs, columnCount: 2)
        case .loadableImageView:
            LoadableImageView()
        }
    }

    // MARK: - Confirmation Dialog

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
