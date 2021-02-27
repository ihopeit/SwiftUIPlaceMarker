//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by David Euler on 2021/2/26.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        VStack {
            //To allow the map content to extend to the top edge of the screen
            // .ignoresSafeArea(edges: .top)
            MapView().ignoresSafeArea(edges: .top).frame(height:300)
            
            // offsets the view from its original position `y`.
            CircleImage().offset(y:-70).padding(.bottom, -90)
            
            VStack (alignment: .leading) {
                Text("A map application")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack {
                    Text("QionglonShan Mountain")//.font(.subheadline)
                    //A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Spacer()
                    Text("Suzhou")//.font(.subheadline)
                }
                //move the subheadline font modifier from each Text view to the HStack, and apply the secondary color to the subheadline text.
                .font(.subheadline).foregroundColor(.secondary)
                
                //Add a divider and some additional descriptive text for the landmark.
                Divider()

                Text("About QionglongShan Mountain")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            //use the padding() modifier method to give the landmark’s name and details a little more space.
            .padding()
            
            //Add a spacer at the bottom of the outer VStack to push the content to the top of the screen.
            Spacer()
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
