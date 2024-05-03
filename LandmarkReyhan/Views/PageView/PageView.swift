
import SwiftUI

struct PageView<Page: View>: View {
  var pages: [Page] // An array of pages (generic type `Page` conforming to `View`)
  @State private var currentPage = 0 // State variable to track the current page index

  var body: some View {
    ZStack(alignment: .bottomTrailing) { // Stack elements with bottom-trailing alignment
      PageViewController(pages: pages, currentPage: $currentPage) // Display PageViewController
      PageControl(numberOfPages: pages.count, currentPage: $currentPage) // Display PageControl
        .frame(width: CGFloat(pages.count * 18)) // Set PageControl width based on page count
        .padding(.trailing) // Add padding on the trailing edge

    }
    .aspectRatio(3 / 2, contentMode: .fit) // Set aspect ratio and content mode
  }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
