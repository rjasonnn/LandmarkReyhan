@_private(sourceFile: "CategoryItem.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CategoryItem {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Categories/CategoryItem.swift", line: 8)
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: __designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 155), height: __designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 155))
                .cornerRadius(__designTimeInteger("#5642.[1].[1].property.[0].[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, __designTimeInteger("#5642.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 15))
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.CategoryItem
#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}



