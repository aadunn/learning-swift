//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Alex Dunn on 2023-10-31.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifcations: \(profile.prefersNotifications ? "On" : "Off" )")
                Text("\(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ")  + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.50)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
