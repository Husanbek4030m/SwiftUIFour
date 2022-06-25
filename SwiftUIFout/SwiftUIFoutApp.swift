//
//  SwiftUIFoutApp.swift
//  SwiftUIFout
//
//  Created by Karavella on 25/06/22.
//

import SwiftUI

@main
struct SwiftUIFoutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
