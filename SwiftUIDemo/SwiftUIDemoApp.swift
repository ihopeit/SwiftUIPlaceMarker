//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by David Euler on 2021/2/26.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
