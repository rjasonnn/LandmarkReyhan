@_private(sourceFile: "GraphCapsule.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension GraphCapsule {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Hikes/GraphCapsule.swift", line: 20)
        Capsule()
            .fill(color)
            .frame(height: height * heightRatio)
            .offset(x: __designTimeInteger("#4284.[1].[7].property.[0].[0].modifier[2].arg[0].value", fallback: 0), y: height * -offsetRatio)
    
#sourceLocation()
    }
}

extension GraphCapsule {
    @_dynamicReplacement(for: offsetRatio) private var __preview__offsetRatio: CGFloat {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Hikes/GraphCapsule.swift", line: 16)
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    
#sourceLocation()
    }
}

extension GraphCapsule {
    @_dynamicReplacement(for: heightRatio) private var __preview__heightRatio: CGFloat {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Hikes/GraphCapsule.swift", line: 12)
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), __designTimeFloat("#4284.[1].[5].property.[0].[0].arg[1].value", fallback: 0.15))
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.GraphCapsule
#Preview {
    GraphCapsule(
        index: 0,
        color: .blue,
        height: 150,
        range: 10..<50,
        overallRange: 0..<100)
}



