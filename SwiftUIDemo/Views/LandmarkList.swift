//
//  LandmarkList.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        
        //You can make your data identifiable in one of two ways:
        //  by passing along with your data a key path to a property that uniquely identifies each element,
        //  or by making your data type conform to the Identifiable protocol.
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail()) {
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
