@_private(sourceFile: "LandmarkDetail.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LandmarkDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkDetail.swift", line: 13)
        @Bindable var modelData = modelData

        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: __designTimeInteger("#7825.[1].[3].property.[0].[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 300))

            CircleImage(image: landmark.image)
                .offset(y: __designTimeInteger("#7825.[1].[3].property.[0].[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: -130))
                .padding(.bottom, __designTimeInteger("#7825.[1].[3].property.[0].[1].arg[0].value.[1].modifier[1].arg[1].value", fallback: -130))

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    
#sourceLocation()
    }
}

extension LandmarkDetail {
    @_dynamicReplacement(for: landmarkIndex) private var __preview__landmarkIndex: Int {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Landmarks/LandmarkDetail.swift", line: 9)
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.LandmarkDetail
#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}



