@_private(sourceFile: "MapView.swift") import _WatchLandmarks_Watch_App
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI
import MapKit

extension MapView {
    @_dynamicReplacement(for: region) private var __preview__region: MKCoordinateRegion {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Helpers/MapView.swift", line: 34)
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    
#sourceLocation()
    }
}

extension MapView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Helpers/MapView.swift", line: 30)
        Map(position: .constant(.region(region)))
    
#sourceLocation()
    }
}

extension MapView {
    @_dynamicReplacement(for: delta) private var __preview__delta: CLLocationDegrees {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Helpers/MapView.swift", line: 22)
        switch zoom {
        case .near: return __designTimeFloat("#4729.[2].[3].property.[0].[0].[0].[0]", fallback: 0.02)
        case .medium: return __designTimeFloat("#4729.[2].[3].property.[0].[0].[1].[0]", fallback: 0.2)
        case .far: return __designTimeInteger("#4729.[2].[3].property.[0].[0].[2].[0]", fallback: 2)
        }
    
#sourceLocation()
    }
}

extension MapView.Zoom {
typealias Zoom = MapView.Zoom

    @_dynamicReplacement(for: id) private var __preview__id: Zoom {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Helpers/MapView.swift", line: 17)
            return self
        
#sourceLocation()
    }
}

import struct _WatchLandmarks_Watch_App.MapView
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}



