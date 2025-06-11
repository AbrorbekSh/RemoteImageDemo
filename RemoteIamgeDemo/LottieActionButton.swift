import SwiftUI
import Lottie

struct LottieActionButton: View {
    let name: String
    let size: CGFloat
    let action: () -> Void
    
    @State private var isPressed = false

    var body: some View {
        Button(action: action) {
            LottieView {
                try await DotLottieFile.named(name)
            }
            .playing(loopMode: .loop)
            .frame(width: size, height: size)
            .scaledToFit()
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .scaleEffect(isPressed ? 0.85 : 1.0)
        .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.2)) {
                isPressed = pressing
            }
        }, perform: {})
    }
}
