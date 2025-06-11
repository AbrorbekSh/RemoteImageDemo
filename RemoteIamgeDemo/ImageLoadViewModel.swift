import Foundation
import Combine

final class ImageLoadViewModel: ObservableObject {
    enum LoadState {
        case idle, loading, success, failure(Error), cancelled
    }

    @Published var progress: Double = 0.0
    @Published var cancelLoading = false
    @Published var state: LoadState = .idle
    @Published var reloadToken = UUID()

    let url: URL

    init(url: URL) {
        self.url = url
    }

    func retry() {
        state = .loading
        cancelLoading = false
        progress = 0
        reloadToken = UUID()
    }

    func cancel() {
        state = .cancelled
        cancelLoading = true
        progress = 0
    }

    func updateProgress(_ value: Double) {
        if abs(progress - value) > 0.01 || value == 0 || value == 1 {
            DispatchQueue.main.async {
                self.progress = value
            }
        }
    }

    func setError(_ error: Error) {
        state = .failure(error)
    }
}
