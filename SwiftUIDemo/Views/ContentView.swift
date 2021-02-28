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
        LandmarkList()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environmentObject(ModelData())
        }
    }
}
