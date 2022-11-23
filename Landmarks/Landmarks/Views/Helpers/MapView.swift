//
//  MapView.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    /*
     * State attribute
     * => Data source
     */
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        /*
         * $ prefix with state
         * => link reference to data
         */
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: .init(latitudeDelta: 0.2,
                        longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: .init(latitude: 34.011_286,
                                  longitude: -116.166_868))
    }
}
