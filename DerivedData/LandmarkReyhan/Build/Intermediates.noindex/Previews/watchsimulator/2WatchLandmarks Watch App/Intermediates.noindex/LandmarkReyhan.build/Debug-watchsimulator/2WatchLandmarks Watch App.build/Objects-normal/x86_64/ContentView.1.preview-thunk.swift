@_private(sourceFile: "ContentView.swift") import _WatchLandmarks_Watch_App
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import UserNotifications
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/2WatchLandmarks Watch App/ContentView.swift", line: 8)
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    
#sourceLocation()
    }
}

import struct _WatchLandmarks_Watch_App.ContentView
#Preview {
    ContentView()
        .environment(ModelData())
}



