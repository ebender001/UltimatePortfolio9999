//
//  UltimatePortfolio9999App.swift
//  UltimatePortfolio9999
//
//  Created by Edward Bender on 2/6/25.
//

import SwiftUI

@main
struct UltimatePortfolio9999App: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView(sidebar: {
                SidebarView()
            }, content: {
                ContentView()
            }, detail: {
                DetailView()
            })
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
