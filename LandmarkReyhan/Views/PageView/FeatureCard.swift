
import SwiftUI
struct FeatureCard: View {
  var landmark: Landmark // Holds data for a landmark

  var body: some View {
    landmark.featureImage? // Display the feature image if it exists (optional chaining)
      .resizable() // Allow image resizing
      .overlay { // Overlay content on top of the image
        TextOverlay(landmark: landmark) // Display TextOverlay view
      }
  }
}

struct TextOverlay: View {
  var landmark: Landmark // Holds data for a landmark

  var gradient: LinearGradient { // Define a linear gradient for the overlay background
    .linearGradient(
      Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
      startPoint: .bottom,
      endPoint: .center)
  }

  var body: some View {
    ZStack(alignment: .bottomLeading) { // Stack elements with bottom-leading alignment
      gradient // Apply the defined gradient as the background
      VStack(alignment: .leading) { // Vertical stack for text elements, aligned leading
        Text(landmark.name) // Display the landmark name
          .font(.title) // Use title font size
          .bold() // Use bold font style
        Text(landmark.park) // Display the park name
      }
      .padding() // Add padding around the text content
    }
    .foregroundStyle(.white) // Set the text color to white
  }
}


#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}
