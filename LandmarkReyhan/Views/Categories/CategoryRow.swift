import SwiftUI

struct CategoryRow: View {
  var categoryName: String // Name of the category
  var items: [Landmark] // Array of landmarks belonging to this category

  var body: some View {
    VStack(alignment: .leading) { // Stack elements vertically, aligned to the leading edge
      Text(categoryName) // Display the category name
        .font(.headline) // Use headline font size
        .padding(.leading, 15) // Add padding on the leading edge (left side)
        .padding(.top, 5) // Add padding on the top

      ScrollView(.horizontal, showsIndicators: false) { // Horizontal scroll view without indicators
        HStack(alignment: .top, spacing: 0) { // Stack elements horizontally, aligned at the top, no spacing
          ForEach(items) { landmark in // Loop through each landmark in the items array
            NavigationLink { // Create a navigation link
              LandmarkDetail(landmark: landmark) // Destination view: LandmarkDetail with the landmark
            } label: { // Label for the navigation link
              CategoryItem(landmark: landmark) // Display the landmark using CategoryItem view
            }
          }
        }
      }
      .frame(height: 185) // Set the scroll view's height
    }
  }
}

#Preview {
  let landmarks = ModelData().landmarks // Get all landmarks from ModelData
  return CategoryRow(
    categoryName: landmarks[0].category.rawValue, // Category name from the first landmark
    items: Array(landmarks.prefix(4)) // First 4 landmarks from the list
  )
}
