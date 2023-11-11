//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by kwon eunji on 11/10/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe to your favorites yet.")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
