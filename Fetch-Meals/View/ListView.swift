//
//  ContentView.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var mealViewModel = MealViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            List(mealViewModel.meals, id: \.idMeal) { meal in
                NavigationLink(meal.strMeal) {
                    DetailView(detailViewModel: MealDetailViewModel(mealID: meal.idMeal, mealName: meal.strMeal))
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListView()
}
