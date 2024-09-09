//
//  ContentView.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var mealViewModel = MealViewModel()
    
    var body: some View {
        VStack {
            
            List(mealViewModel.meals, id: \.idMeal) { meal in
                Text(meal.strMeal)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
