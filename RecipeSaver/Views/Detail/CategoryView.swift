//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by kwon eunji on 11/11/23.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    //Computed property
    var recipes: [Recipe] {
        return Recipe.all.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

#Preview {
    CategoryView(category: Category.dessert)
}
