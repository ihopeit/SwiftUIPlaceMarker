//
//  LandmarkDetail.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            //To allow the map content to extend to the top edge of the screen
            // .ignoresSafeArea(edges: .top)
            MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges: .top).frame(height:300)
            
            // offsets the view from its original position `y`.
            CircleImage(image:landmark.image).offset(y:-70).padding(.bottom, -90)
            
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack {
                    Text(landmark.park)//.font(.subheadline)
                    //A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Spacer()
                    Text(landmark.state)//.font(.subheadline)
                }
                //move the subheadline font modifier from each Text view to the HStack, and apply the secondary color to the subheadline text.
                .font(.subheadline).foregroundColor(.secondary)
                
                //Add a divider and some additional descriptive text for the landmark.
                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            //use the padding() modifier method to give the landmark’s name and details a little more space.
            .padding()
            
            //Add a spacer at the bottom of the outer VStack to push the content to the top of the screen.
            //Spacer()
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
