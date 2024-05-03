@_private(sourceFile: "PageView.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/PageView/PageView.swift", line: 9)
    ZStack(alignment: .bottomTrailing) { // Stack elements with bottom-trailing alignment
      PageViewController(pages: pages, currentPage: $currentPage) // Display PageViewController
      PageControl(numberOfPages: pages.count, currentPage: $currentPage) // Display PageControl
        .frame(width: CGFloat(pages.count * __designTimeInteger("#5780.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 18))) // Set PageControl width based on page count
        .padding(.trailing) // Add padding on the trailing edge

    }
    .aspectRatio(__designTimeInteger("#5780.[1].[2].property.[0].[0].modifier[0].arg[0].value.[0]", fallback: 3) / __designTimeInteger("#5780.[1].[2].property.[0].[0].modifier[0].arg[0].value.[1]", fallback: 2), contentMode: .fit) // Set aspect ratio and content mode
  
#sourceLocation()
    }
}

import struct LandmarkReyhan.PageView
#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}



