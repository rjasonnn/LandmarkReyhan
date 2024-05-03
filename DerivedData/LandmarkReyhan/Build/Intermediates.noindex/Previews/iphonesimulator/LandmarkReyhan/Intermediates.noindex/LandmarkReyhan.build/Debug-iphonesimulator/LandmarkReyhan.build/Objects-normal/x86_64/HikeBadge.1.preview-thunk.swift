@_private(sourceFile: "HikeBadge.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HikeBadge {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Badges/HikeBadge.swift", line: 9)
        VStack(alignment: .center) {
            Badge()
                .frame(width: __designTimeInteger("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 300))
                .scaleEffect(__designTimeFloat("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.[0]", fallback: 1.0) / __designTimeFloat("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.[1]", fallback: 3.0))
                .frame(width: __designTimeInteger("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#7047.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 100))
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.HikeBadge
#Preview {
    HikeBadge(name: "Preview Testing")
}



