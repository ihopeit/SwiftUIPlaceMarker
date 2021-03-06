//
//  LandmarkRow.swift
//  SwiftUIPlaceMarker
//
//  Created by David Euler on 2021/2/27.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                //system images are vector based, you can change their color with the foregroundColor(_:) modifier.
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[0]) //.previewLayout(.fixed(width: 300, height: 70))
            
            LandmarkRow(landmark: ModelData().landmarks[1]) //.previewLayout(.fixed(width: 300, height: 70))
        }
        
        //To simplify the code, move the previewLayout(_:) call to the outside of the group’s child declarations.
        //A view’s children inherit the view’s contextual settings, such as preview configurations.
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
