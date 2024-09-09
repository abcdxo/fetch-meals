//
//  MealDetailViewModel.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    @Published var mealDetals: [MealDetail] = []
    
    let mealID: String
    let mealName: String
    
    init(mealID: String, mealName: String) {
        self.mealID = mealID
        self.mealName = mealName
    }
    
     func fetchDetailForDessert() {
        Task {
            do {
                let jsonResponse: JSONResponseDetail = try await APIService.request(urlRequest: .dessertById(dessertID: mealID))
                await MainActor.run {
                    self.mealDetals = jsonResponse.meals.compactMap { $0 }
                    print(mealDetals)
                }
            } catch let error {
                // show error
                print(error.localizedDescription)
                print(">>> \(error)")
            }
        }
    }
}
