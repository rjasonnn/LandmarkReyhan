@_private(sourceFile: "FeatureCard.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TextOverlay {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/PageView/FeatureCard.swift", line: 26)
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
  
#sourceLocation()
    }
}

extension TextOverlay {
    @_dynamicReplacement(for: gradient) private var __preview__gradient: LinearGradient {
        // Define a linear gradient for the overlay background

#sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/PageView/FeatureCard.swift", line: 19)
    .linearGradient(
      Gradient(colors: [.black.opacity(__designTimeFloat("#4600.[2].[1].property.[0].[0].arg[0].value.arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.6)), .black.opacity(__designTimeInteger("#4600.[2].[1].property.[0].[0].arg[0].value.arg[0].value.[1].modifier[0].arg[0].value", fallback: 0))]),
      startPoint: .bottom,
      endPoint: .center)
  
#sourceLocation()
    }
}

extension FeatureCard {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/PageView/FeatureCard.swift", line: 7)
    landmark.featureImage? // Display the feature image if it exists (optional chaining)
      .resizable() // Allow image resizing
      .overlay { // Overlay content on top of the image
        TextOverlay(landmark: landmark) // Display TextOverlay view
      }
  
#sourceLocation()
    }
}

import struct LandmarkReyhan.FeatureCard
import struct LandmarkReyhan.TextOverlay
#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}



