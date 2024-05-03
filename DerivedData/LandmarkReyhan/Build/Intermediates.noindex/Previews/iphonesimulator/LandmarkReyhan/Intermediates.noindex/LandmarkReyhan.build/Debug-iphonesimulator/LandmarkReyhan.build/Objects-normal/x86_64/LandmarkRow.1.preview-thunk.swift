@_private(sourceFile: "LandmarkRow.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LandmarkRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkRow.swift", line: 7)
    HStack(alignment: .center) { // Horizontal stack for arranging elements
      landmark.image // Display the landmark's image
        .resizable() // Allow image resizing
        .frame(width: __designTimeInteger("#8784.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 50), height: __designTimeInteger("#8784.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 50)) // Set image frame size
        .cornerRadius(__designTimeInteger("#8784.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 5)) // Apply rounded corners

      VStack(alignment: .leading) { // Vertical stack for name and park info (leading aligned)
        Text(landmark.name) // Display the landmark name
          .bold() // Use bold font style

        #if !os(watchOS) // Check if not running on watchOS
        Text(landmark.park) // Display the park name (excluded on watchOS)
          .font(.caption) // Use caption font size
          .foregroundStyle(.secondary) // Use secondary text color
        #endif
      }

      Spacer() // Add spacer for horizontal space management

      if landmark.isFavorite { // Check if the landmark is favorited
        Image(systemName: __designTimeString("#8784.[1].[1].property.[0].[0].arg[1].value.[3].[0].[0].arg[0].value", fallback: "star.fill")) // Display a filled star icon
          .foregroundStyle(.yellow) // Set the icon color to yellow
      }
    }
    .padding(.vertical, __designTimeInteger("#8784.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 4)) // Add vertical padding (top and bottom)
  
#sourceLocation()
    }
}

import struct LandmarkReyhan.LandmarkRow
#Preview {
  let landmarks = ModelData().landmarks // Get all landmarks from ModelData
  return Group { // Group container for multiple previews
    LandmarkRow(landmark: landmarks[0]) // Preview with first landmark
    LandmarkRow(landmark: landmarks[1]) // Preview with second landmark
  }
}



