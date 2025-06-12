import Foundation
import Combine

final class ImageLoadViewModel: ObservableObject {
    enum LoadState: Equatable {
        case idle, loading, success, failure(Error), cancelled
        
        static func == (lhs: LoadState, rhs: LoadState) -> Bool {
            switch (lhs, rhs) {
            case (.idle, .idle),
                 (.loading, .loading),
                 (.success, .success),
                 (.cancelled, .cancelled):
                return true
            case let (.failure(lhsError), .failure(rhsError)):
                return lhsError.localizedDescription == rhsError.localizedDescription
            default:
                return false
            }
        }
    }

    @Published var progress: Double = 0.0
    @Published var cancelLoading = false
    @Published var state: LoadState = .idle
    @Published var reloadToken = UUID()

    let url: URL

    init(url: URL) {
        self.url = url
    }
    
    func load() {
        guard state != .loading else { return }
        state = .loading
        cancelLoading = false
        progress = 0
        reloadToken = UUID()
    }

    func retry() {
        state = .loading
        cancelLoading = false
        progress = 0
        reloadToken = UUID()
    }

    func cancel() {
        guard state == .loading else { return }
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
    
    func updateState(_ state: LoadState) {
        self.state = state
    }

    func setError(_ error: Error) {
        state = .failure(error)
    }
}
