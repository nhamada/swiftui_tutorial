//
//  MapView.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    /*
     * State attribute
     * => Data source
     */
    @State private var region = MKCoordinateRegion(
        center: .init(latitude: 34.011_286,
                      longitude: -116.166_868),
        span: .init(latitudeDelta: 0.2,
                    longitudeDelta: 0.2)
    )
    
    var body: some View {
        /*
         * $ prefix with state
         * => link reference to data
         */
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
