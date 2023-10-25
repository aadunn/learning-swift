//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Alex Dunn on 2023-10-23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
