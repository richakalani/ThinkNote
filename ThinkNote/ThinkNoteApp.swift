//
//  ThinkNoteApp.swift
//  ThinkNote
//
//  Created by Richa Kalani on 26/04/25.
//

import SwiftUI

@main
struct ThinkNoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
