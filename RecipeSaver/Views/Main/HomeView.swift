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
            Text("My Recipes")
                .navigationTitle("My Recipes")
        }
    }
}

#Preview {
    HomeView()
}
