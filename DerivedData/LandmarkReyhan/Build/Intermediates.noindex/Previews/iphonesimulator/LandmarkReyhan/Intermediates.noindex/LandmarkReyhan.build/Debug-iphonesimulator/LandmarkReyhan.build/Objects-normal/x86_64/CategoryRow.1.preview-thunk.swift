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
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Categories/CategoryRow.swift", line: 10)
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 15))
                .padding(.top, __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 5))

            ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#6814.[1].[2].property.[0].[0].arg[1].value.[1].arg[1].value", fallback: false)) {
                HStack(alignment: .top, spacing: __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[1].arg[2].value.[0].arg[1].value", fallback: 0)) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: __designTimeInteger("#6814.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value", fallback: 185))
        }
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.CategoryRow
#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}



