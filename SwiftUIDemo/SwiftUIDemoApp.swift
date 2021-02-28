//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by David Euler on 2021/2/26.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {

    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
