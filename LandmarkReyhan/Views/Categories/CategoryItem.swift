import SwiftUI

struct CategoryItem: View {
  var landmark: Landmark

  var body: some View {
    VStack(alignment: .leading) { // Stack elements vertically, aligned to the leading edge
      landmark.image
        .renderingMode(.original) // Preserve the image's original colors
        .resizable() // Allow image resizing to fit the frame
        .frame(width: 155, height: 155) // Set the image frame size
        .cornerRadius(5) // Apply rounded corners to the image

      Text(landmark.name) // Display the landmark's name
        .foregroundStyle(.primary) // Use the app's primary text color
        .font(.caption) // Use the caption font size
    }
    .padding(.leading, 15) // Add padding on the leading edge (left side)
  }
}

#Preview {
  CategoryItem(landmark: ModelData().landmarks[0]) // Preview with first landmark
}
