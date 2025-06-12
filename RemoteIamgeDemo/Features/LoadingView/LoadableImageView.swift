import SwiftUI
import RemoteImage

// MARK: - LoadableImageView

struct LoadableImageView: View {
    @StateObject private var viewModel = ImageLoadViewModel(url: SampleData.catImage30MB)

    var body: some View {
        VStack(spacing: 16) {
            imageDisplay
                .id(viewModel.reloadToken)

            ActionButtons(viewModel: viewModel)

            GradientButton(label: "Clear Cache",
                           systemImage: "trash",
                           gradient: .init(colors: [.blue, .purple])) {
                Task {
                    URLCache.shared.removeAllCachedResponses()
                    try? await TieredImageCache.shared.clearCache()
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.softBlue)
        .onDisappear { viewModel.cancel() }
    }

    // MARK: - Image Display

    @ViewBuilder
    private var imageDisplay: some View {
        RemoteImage(viewModel.url)
            .onSuccess { _ in viewModel.updateState(.success) }
            .placeholder {
                switch viewModel.state {
                case .cancelled:
                    PlaceholderView(icon: "nosign", message: "Loading Cancelled", color: .orange)
                default:
                    ProgressBarView(progress: $viewModel.progress)
                }
            }
            .failure { error in
                FailureView(retryAction: viewModel.retry)
                    .onAppear { viewModel.setError(error) }
            }
            .onProgress { progress in
                viewModel.updateProgress(progress)
            }
            .cancelOnDisappear(true)
            .cancelLoading(trigger: $viewModel.cancelLoading)
            .resizable()
            .onAppear { viewModel.updateState(.loading) }
            .scaledToFit()
            .cornerRadius(16)
            .frame(height: 560)
    }
}

// MARK: - ActionButtons

struct ActionButtons: View {
    @ObservedObject var viewModel: ImageLoadViewModel

    var body: some View {
        HStack(spacing: 8) {
            GradientButton(label: "Cancel", systemImage: "xmark.circle", gradient: .init(colors: [.red, .orange])) {
                viewModel.cancel()
            }

            GradientButton(label: "Load", systemImage: "arrow.clockwise.circle", gradient: .init(colors: [.green, .mint])) {
                viewModel.load()
            }
        }
    }
}

// MARK: - GradientButton

struct GradientButton: View {
    let label: String
    let systemImage: String
    let gradient: Gradient
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Label(label, systemImage: systemImage)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)
                        .cornerRadius(16)
                )
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.15), radius: 4, x: 0, y: 2)
        }
    }
}

// MARK: - FailureView

struct FailureView: View {
    let retryAction: () -> Void

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "xmark.octagon")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text("Failed to load image")
                .foregroundColor(.red)
                .font(.headline)
            GradientButton(label: "Retry", systemImage: "arrow.clockwise", gradient: Gradient(colors: [.red, .orange]), action: retryAction)
        }
    }
}

// MARK: - PlaceholderView

struct PlaceholderView: View {
    let icon: String
    let message: String
    let color: Color

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(color)
            Text(message)
                .font(.headline)
                .foregroundColor(color)
        }
        .padding(.bottom, 10)
    }
}

// MARK: - ProgressBarView

struct ProgressBarView: View {
    @Binding var progress: Double
    var barWidth: CGFloat = 200
    var barHeight: CGFloat = 10

    var body: some View {
        VStack(spacing: 16) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: barHeight)
                    .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)

                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple]),
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                    .frame(width: CGFloat(progress) * barWidth, height: barHeight)
                    .animation(.easeInOut(duration: 0.3), value: progress)
            }
            .frame(width: barWidth)

            Text("Loading… \(Int(progress * 100))%")
                .font(.subheadline)
                .foregroundColor(.purple)
                .monospacedDigit()
                .accessibilityLabel("Loading progress")
                .accessibilityValue("\(Int(progress * 100)) percent")
        }
        .padding()
    }

    private let cornerRadius: CGFloat = 10
}
