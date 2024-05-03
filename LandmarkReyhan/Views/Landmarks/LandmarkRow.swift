import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark // Holds data for a single landmark

  var body: some View {
    HStack(alignment: .center) { // Horizontal stack for arranging elements
      landmark.image // Display the landmark's image
        .resizable() // Allow image resizing
        .frame(width: 50, height: 50) // Set image frame size
        .cornerRadius(5) // Apply rounded corners

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
        Image(systemName: "star.fill") // Display a filled star icon
          .foregroundStyle(.yellow) // Set the icon color to yellow
      }
    }
    .padding(.vertical, 4) // Add vertical padding (top and bottom)
  }
}

#Preview {
  let landmarks = ModelData().landmarks // Get all landmarks from ModelData
  return Group { // Group container for multiple previews
    LandmarkRow(landmark: landmarks[0]) // Preview with first landmark
    LandmarkRow(landmark: landmarks[1]) // Preview with second landmark
  }
}
