//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Alex Dunn on 2023-10-24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
