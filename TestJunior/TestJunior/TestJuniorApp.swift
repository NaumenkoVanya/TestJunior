//
//  TestJuniorApp.swift
//  TestJunior
//
//  Created by Ваня Науменко on 11.03.23.
//

import SwiftUI

@main
struct TestJuniorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
