import SwiftUI

struct CategoryHome: View {

    // Access the ModelData environment object containing landmark and category data
    @Environment(ModelData.self) var modelData

    // State variable to control user profile sheet visibility
    @State private var showingProfile = false

    var body: some View {
        NavigationSplitView {

            // Sidebar (list kebawah)
            List {

                // Featured landmarks section
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .listRowInsets(EdgeInsets()) // Remove default padding around list rows

                // Category list section
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets()) // Remove default padding around list rows
            }
            .listStyle(.inset) // Apply inset group style for visual separation
            .navigationTitle("Featured") // Set the navigation title

            // Toolbar for user profile button
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }

            // Sheet for user profile
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData) // Pass ModelData to ProfileHost
            }
        } detail: { // Detail view (placeholder for now)
            Text("Select a Landmark")
        }
    }
}

// Preview for debugging (optional)
#Preview {
    CategoryHome()
        .environment(ModelData())
}
