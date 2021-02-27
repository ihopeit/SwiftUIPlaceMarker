//
//  Landmark.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import Foundation
import SwiftUI
import CoreLocation


//Adding Codable conformance makes it easier to load data into the structure from the data file
struct Landmark: Hashable, Codable, Identifiable {
    //the id property required by Identifiable protocol; 
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
