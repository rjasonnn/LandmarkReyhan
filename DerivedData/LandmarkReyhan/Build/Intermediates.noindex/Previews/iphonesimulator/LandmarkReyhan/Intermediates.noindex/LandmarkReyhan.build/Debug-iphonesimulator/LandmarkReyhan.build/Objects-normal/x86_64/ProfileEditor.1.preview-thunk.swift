@_private(sourceFile: "ProfileEditor.swift") import LandmarkReyhan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Profiles/ProfileEditor.swift", line: 14)
        List {
            HStack {
                Text(__designTimeString("#5918.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Username"))
                Spacer()
                TextField(__designTimeString("#5918.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Username"), text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
//toggle notif
            Toggle(isOn: $profile.prefersNotifications) {
                Text(__designTimeString("#5918.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Enable Notifications"))
            }

            Picker(__designTimeString("#5918.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "Seasonal Photo"), selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }

            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text(__designTimeString("#5918.[1].[2].property.[0].[0].arg[0].value.[3].arg[3].value.[0].arg[0].value", fallback: "Goal Date"))
            }
        }
    
#sourceLocation()
    }
}

extension ProfileEditor {
    @_dynamicReplacement(for: dateRange) private var __preview__dateRange: ClosedRange<Date> {
        #sourceLocation(file: "/Users/mac/Downloads/LandmarkReyhan-main/LandmarkReyhan/Views/Profiles/ProfileEditor.swift", line: 8)
        let min = Calendar.current.date(byAdding: .year, value: __designTimeInteger("#5918.[1].[1].property.[0].[0].value.[0]", fallback: -1), to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: __designTimeInteger("#5918.[1].[1].property.[0].[1].value.[0]", fallback: 1), to: profile.goalDate)!
        return min...max
    
#sourceLocation()
    }
}

import struct LandmarkReyhan.ProfileEditor
#Preview {
    ProfileEditor(profile: .constant(.default))
}



