//
//  Profile.swift
//  Landmarks
//
//  Created by Alex Dunn on 2023-10-31.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        case spring = "🌷"
        
        var id: String { rawValue }
    }
}
