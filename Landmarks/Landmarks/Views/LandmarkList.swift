//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            /* List with key path
            List(landmarks, id: \.id) { landmark in
                LandmarkRow(landmark: landmark)
            }
             */
            // List with Identifiable
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
