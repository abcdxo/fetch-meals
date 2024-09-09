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
        Task {
            do {
                let jsonResponse: JSONReponse = try await APIService.request(urlRequest: .allDesserts)
                await MainActor.run {
                    self.meals = jsonResponse.meals.sorted(by: { $0.strMeal < $1.strMeal })
                }
            } catch let error {
                // show error
                print(error.localizedDescription)
                print(error)
            }
        }
    }
}
