//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView: View {
    
    let places = [
        Place(name: "British Museum", latitude: 31.21, longitude: 120.50),
        Place(name: "Tower of London", latitude: 31.210205, longitude: 120.52301),
        Place(name: "Big Ben", latitude: 31.230006, longitude: 120.54002)
    ]
    
    //@State attribute to establish a source of truth for data in your app that you can modify from more than one view.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 31.21, longitude: 120.50),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: false,  annotationItems: places){ place in
            // to mark location on map by annotationItems:
            MapPin(coordinate: place.coordinate)
//            MapMarker(coordinate: place.coordinate)

        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
