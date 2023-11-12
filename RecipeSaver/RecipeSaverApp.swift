//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by kwon eunji on 11/10/23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
