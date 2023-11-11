//
//  HomeView.swift
//  RecipeSaver
//
//  Created by kwon eunji on 11/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) { recipe in
                Text(recipe.name)
                    .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
