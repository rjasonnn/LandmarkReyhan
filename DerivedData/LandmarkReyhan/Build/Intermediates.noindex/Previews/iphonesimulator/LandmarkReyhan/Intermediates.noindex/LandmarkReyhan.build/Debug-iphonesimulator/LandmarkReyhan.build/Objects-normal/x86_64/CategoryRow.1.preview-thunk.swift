@_private(sourceFile: "CategoryRow.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CategoryRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Categories/CategoryRow.swift", line: 8)
    VStack(alignment: .leading) { // Stack elements vertically, aligned to the leading edge
      Text(categoryName) // Display the category name
        .font(.headline) // Use headline font size
        .padding(.leading, __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 15)) // Add padding on the leading edge (left side)
        .padding(.top, __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 5)) // Add padding on the top

      ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#6814.[1].[2].property.[0].[0].arg[1].value.[1].arg[1].value", fallback: false)) { // Horizontal scroll view without indicators
        HStack(alignment: .top, spacing: __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[1].arg[2].value.[0].arg[1].value", fallback: 0)) { // Stack elements horizontally, aligned at the top, no spacing
          ForEach(items) { landmark in // Loop through each landmark in the items array
            NavigationLink { // Create a navigation link
              LandmarkDetail(landmark: landmark) // Destination view: LandmarkDetail with the landmark
            } label: { // Label for the navigation link
              CategoryItem(landmark: landmark) // Display the landmark using CategoryItem view
            }
          }
        }
      }
      .frame(height: __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value", fallback: 185)) // Set the scroll view's height
    }
  
#sourceLocation()
    }
}

import struct LandmarkReyhan.CategoryRow
#Preview {
  let landmarks = ModelData().landmarks // Get all landmarks from ModelData
  return CategoryRow(
    categoryName: landmarks[0].category.rawValue, // Category name from the first landmark
    items: Array(landmarks.prefix(4)) // First 4 landmarks from the list
  )
}



