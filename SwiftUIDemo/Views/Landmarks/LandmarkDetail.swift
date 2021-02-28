//
//  LandmarkDetail.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            //To allow the map content to extend to the top edge of the screen
            // .ignoresSafeArea(edges: .top)
            MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges: .top).frame(height:300)
            
            // offsets the view from its original position `y`.
            CircleImage(image:landmark.image).offset(y:-130).padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.green)
                    
                    //Use landmarkIndex with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in your model object.
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
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
//            Spacer()
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
