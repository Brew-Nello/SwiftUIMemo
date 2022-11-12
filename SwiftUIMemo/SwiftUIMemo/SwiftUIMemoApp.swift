//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 형욱 on 2022/11/12.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
