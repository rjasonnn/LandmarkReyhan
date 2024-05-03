@_private(sourceFile: "LandmarkList.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LandmarkList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkList.swift", line: 44)
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
      .frame(minWidth: __designTimeInteger("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 300)) // Set minimum width for the list pane

      .toolbar { // Toolbar for filtering and favorites toggle
        ToolbarItem {
          Menu { // Menu for filter options
            Picker(__designTimeString("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Category"), selection: $filter) { // Picker for selecting filter category
              ForEach(FilterCategory.allCases) { category in // Loop through all filter cases
                Text(category.rawValue).tag(category) // Display category name and set tag
              }
            }
            .pickerStyle(.inline) // Use inline picker style

            Toggle(isOn: $showFavoritesOnly) { // Toggle for showing only favorites
              Label(__designTimeString("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Favorites only"), systemImage: __designTimeString("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "star.fill")) // Label with icon
            }
          } label: { // Label for the filter menu
            Label(__designTimeString("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Filter"), systemImage: __designTimeString("#8565.[1].[8].property.[0].[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "slider.horizontal.3")) // Label with icon
          }
        }
      }
    } detail: { // Detail view placeholder
      Text(__designTimeString("#8565.[1].[8].property.[0].[1].arg[1].value.[0].arg[0].value", fallback: "Select a Landmark"))
    }
    .focusedValue(\.selectedLandmark, $modelData.landmarks[index ?? __designTimeInteger("#8565.[1].[8].property.[0].[1].modifier[0].arg[1].value.[0].value.[0]", fallback: 0)]) // Bind selectedLandmark to modelData
  
#sourceLocation()
    }
}

extension LandmarkList {
    @_dynamicReplacement(for: index) private var __preview__index: Int? {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkList.swift", line: 40)
    modelData.landmarks.firstIndex(where: { $0.id == selectedLandmark?.id })
  
#sourceLocation()
    }
}

extension LandmarkList {
    @_dynamicReplacement(for: title) private var __preview__title: String {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkList.swift", line: 34)
    let title = filter == .all ? __designTimeString("#8565.[1].[6].property.[0].[0].value.then", fallback: "Landmarks") : filter.rawValue
    return showFavoritesOnly ? "Favorite \(title)" : title
  
#sourceLocation()
    }
}

extension LandmarkList {
    @_dynamicReplacement(for: filteredLandmarks) private var __preview__filteredLandmarks: [Landmark] {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkList.swift", line: 23)
    modelData.landmarks.filter { landmark in
      // Keep landmark if it's either:
      // - Not showing favorites only OR the landmark is a favorite
      (!showFavoritesOnly || landmark.isFavorite)
        // AND (filter is "All" OR filter category matches landmark category)
        && (filter == .all || filter.rawValue == landmark.category.rawValue)
    }
  
#sourceLocation()
    }
}

extension LandmarkList.FilterCategory {
typealias FilterCategory = LandmarkList.FilterCategory

    @_dynamicReplacement(for: id) private var __preview__id: FilterCategory {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkList.swift", line: 18)
 self 

#sourceLocation()
    }
}

import struct LandmarkReyhan.LandmarkList
#Preview {
  LandmarkList()
    .environment(ModelData()) // Pass ModelData to the preview
}



