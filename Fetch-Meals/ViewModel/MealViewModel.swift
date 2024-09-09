//
//  MealViewModel.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import Foundation

class MealViewModel: ObservableObject {
    
    @Published var meals: [Meal] = []
    
    init() {
        self.getMeals()
    }
    
    private func getMeals() {
        
    }
}
