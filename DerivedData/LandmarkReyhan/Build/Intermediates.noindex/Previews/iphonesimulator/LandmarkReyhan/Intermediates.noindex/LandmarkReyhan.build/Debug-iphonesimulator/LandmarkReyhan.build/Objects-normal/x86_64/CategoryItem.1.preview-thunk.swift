@_private(sourceFile: "CategoryItem.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CategoryItem {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Categories/CategoryItem.swift", line: 7)
    VStack(alignment: .leading) { // Stack elements vertically, aligned to the leading edge
      landmark.image
        .renderingMode(.original) // Preserve the image's original colors
        .resizable() // Allow image resizing to fit the frame
        .frame(width: __designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 155), height: __designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 155)) // Set the image frame size
        .cornerRadius(__designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5)) // Apply rounded corners to the image

      Text(landmark.name) // Display the landmark's name
        .foregroundStyle(.primary) // Use the app's primary text color
        .font(.caption) // Use the caption font size
    }
    .padding(.leading, __designTimeInteger("#5642.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 15)) // Add padding on the leading edge (left side)
  
#sourceLocation()
    }
}

import struct LandmarkReyhan.CategoryItem
#Preview {
  CategoryItem(landmark: ModelData().landmarks[0]) // Preview with first landmark
}



