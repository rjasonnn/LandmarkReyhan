import SwiftUI

struct LandmarkList: View {
  @Environment(ModelData.self) var modelData // Access ModelData environment object

  // State variables for filtering and selection
  @State private var showFavoritesOnly = false // Show only favorite landmarks (initially false)
  @State private var filter = FilterCategory.all // Filter category (initially "All")
  @State private var selectedLandmark: Landmark? // Currently selected landmark (initially nil)

  // Enum for filter categories
  enum FilterCategory: String, CaseIterable, Identifiable {
    case all = "All"
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"

    var id: FilterCategory { self } // Each case conforms to Identifiable
  }

  // Computed property for filtered landmarks based on favorites and category filters
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { landmark in
      // Keep landmark if it's either:
      // - Not showing favorites only OR the landmark is a favorite
      (!showFavoritesOnly || landmark.isFavorite)
        // AND (filter is "All" OR filter category matches landmark category)
        && (filter == .all || filter.rawValue == landmark.category.rawValue)
    }
  }

  // Computed property for the list title based on filter and favorites settings
  var title: String {
    let title = filter == .all ? "Landmarks" : filter.rawValue
    return showFavoritesOnly ? "Favorite \(title)" : title
  }

  // Computed property to find the index of the selected landmark in the modelData array
  var index: Int? {
    modelData.landmarks.firstIndex(where: { $0.id == selectedLandmark?.id })
  }

  var body: some View {
    @Bindable var modelData = modelData // Bind the local modelData to the environment

    NavigationSplitView { // Split view for list (master) and detail (detail) panes
      List(selection: $selectedLandmark) { // List of landmarks with selection
        ForEach(filteredLandmarks) { landmark in // Loop through filtered landmarks
          NavigationLink { // Navigation link for each landmark
            LandmarkDetail(landmark: landmark) // Destination view: LandmarkDetail
          } label: { // Label for the navigation link
            LandmarkRow(landmark: landmark) // Display landmark details using LandmarkRow
          }
          .tag(landmark) // Assign landmark as the tag for selection
        }
      }
      .animation(.default, value: filteredLandmarks) // Animate list updates based on filters
      .navigationTitle(title) // Set the navigation title based on filter and favorites settings
      .frame(minWidth: 300) // Set minimum width for the list pane

      .toolbar { // Toolbar for filtering and favorites toggle
        ToolbarItem {
          Menu { // Menu for filter options
            Picker("Category", selection: $filter) { // Picker for selecting filter category
              ForEach(FilterCategory.allCases) { category in // Loop through all filter cases
                Text(category.rawValue).tag(category) // Display category name and set tag
              }
            }
            .pickerStyle(.inline) // Use inline picker style

            Toggle(isOn: $showFavoritesOnly) { // Toggle for showing only favorites
              Label("Favorites only", systemImage: "star.fill") // Label with icon
            }
          } label: { // Label for the filter menu
            Label("Filter", systemImage: "slider.horizontal.3") // Label with icon
          }
        }
      }
    } detail: { // Detail view placeholder
      Text("Select a Landmark")
    }
    .focusedValue(\.selectedLandmark, $modelData.landmarks[index ?? 0]) // Bind selectedLandmark to modelData
  }
}

#Preview {
  LandmarkList()
    .environment(ModelData()) // Pass ModelData to the preview
}
