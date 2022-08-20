//
//  AlgorithmsApp.swift
//  Algorithms
//
//  Created by Shakhnoza Mirabzalova on 8/19/22.
//

import SwiftUI

@main
struct AlgorithmsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
