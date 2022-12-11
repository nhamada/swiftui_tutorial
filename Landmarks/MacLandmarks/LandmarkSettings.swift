//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Naohiro Hamada on 2022/12/11.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.Zoom")
    private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom: ", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
