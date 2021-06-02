//
//  LightsAppApp.swift
//  LightsApp
//
//  Created by Никита  on 02.06.2021.
//

import SwiftUI

@main
struct LightsAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
