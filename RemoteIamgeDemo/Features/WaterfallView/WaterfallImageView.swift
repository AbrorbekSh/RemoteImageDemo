import SwiftUI
import RemoteImage

// MARK: - WaterfallImageView

struct WaterfallImageView: View {
    // MARK: Properties

    @StateObject private var networkMonitor = NetworkMonitor()
    let imageURLs: [URL]
    let columnCount: Int

    // MARK: Computed

    private var columnedURLs: [[String]] {
        guard columnCount > 0 else { return [] }
        var columns = Array(repeating: [String](), count: columnCount)
        for (index, url) in imageURLs.enumerated() {
            columns[index % columnCount].append(url.absoluteString)
        }
        return columns
    }

    // MARK: Body

    var body: some View {
        Group {
            if networkMonitor.isConnected {
                ScrollView {
                    HStack(alignment: .top, spacing: 8) {
                        ForEach(columnedURLs, id: \.self) { column in
                            ImageColumnView(urls: column)
                        }
                    }
                    .padding()
                }
                .background(Color.softBlue)
            } else {
                NoConnectionView()
            }
        }
        .animation(.easeInOut, value: networkMonitor.isConnected)
    }
}

// MARK: - ImageColumnView

struct ImageColumnView: View {
    // MARK: Properties

    let urls: [String]

    // MARK: Body

    var body: some View {
        LazyVStack(spacing: 8) {
            ForEach(urls.compactMap { URL(string: $0) }, id: \.self) { url in
                RemoteImage(url)
                    .placeholder {
                        ProgressView()
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                    }
                    .failure { _ in
                        Image(systemName: "wifi.slash")
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                    }
                    .resizable()
                    .fadeIn(0.25)
                    .cancelOnDisappear(false)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(10)
            }
        }
    }
}

// MARK: - NoConnectionView

struct NoConnectionView: View {
    // MARK: Body

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "wifi.slash")
                .font(.system(size: 50))
                .padding()
            Text("No Internet Connection")
                .font(.title2)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.softBlue)
    }
}
