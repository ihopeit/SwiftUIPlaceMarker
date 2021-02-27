//
//  LandmarkList.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI

struct LandmarkList: View {
    
    //State is a value, or a set of values, that can change over time, and that affects a view’s behavior, content, or layout.
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
           landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        
        //You can make your data identifiable in one of two ways:
        //  by passing along with your data a key path to a property that uniquely identifies each element,
        //  or by making your data type conform to the Identifiable protocol.
        NavigationView {
            List{
                //A binding acts as a reference to a mutable state.
                //You use the $ prefix to access a binding to a state variable, or one of its properties.
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                //To combine static and dynamic views in a list,
                // or to combine two or more different groups of dynamic views,
                // use the ForEach type instead of passing your collection of data to List.
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark:landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }

    }
}
