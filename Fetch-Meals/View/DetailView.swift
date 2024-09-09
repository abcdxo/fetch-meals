//
//  DetailView.swift
//  Fetch-Meals
//
//  Created by Thinh Nguyen on 9/9/24.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var detailViewModel: MealDetailViewModel
    
    var body: some View {
        VStack {
            
            List(detailViewModel.mealDetals, id: \.idMeal) { mealDetail in
               
                if let instruction = mealDetail.strInstructions {
                    Section("Instruction") {
                        Text("\(instruction)")
                    }
                }
               
                Section("Ingredient") {
                    Text("\(mealDetail.strIngredient1 ?? "") \(mealDetail.strMeasure1 ?? "")")
                    Text("\(mealDetail.strIngredient2 ?? "") \(mealDetail.strMeasure2 ?? "")")
                    Text("\(mealDetail.strIngredient3 ?? "") \(mealDetail.strMeasure3 ?? "")")
                    Text("\(mealDetail.strIngredient4 ?? "") \(mealDetail.strMeasure4 ?? "")")
                    Text("\(mealDetail.strIngredient5 ?? "") \(mealDetail.strMeasure5 ?? "")")
                    Text("\(mealDetail.strIngredient6 ?? "") \(mealDetail.strMeasure6 ?? "")")
                    Text("\(mealDetail.strIngredient7 ?? "") \(mealDetail.strMeasure7 ?? "")")
                    Text("\(mealDetail.strIngredient8 ?? "") \(mealDetail.strMeasure8 ?? "")")
                    Text("\(mealDetail.strIngredient9 ?? "") \(mealDetail.strMeasure9 ?? "")")
                    Text("\(mealDetail.strIngredient10 ?? "") \(mealDetail.strMeasure10 ?? "")")
                    Text("\(mealDetail.strIngredient11 ?? "") \(mealDetail.strMeasure11 ?? "")")
                    Text("\(mealDetail.strIngredient12 ?? "") \(mealDetail.strMeasure12 ?? "")")
                    Text("\(mealDetail.strIngredient13 ?? "") \(mealDetail.strMeasure13 ?? "")")
                    Text("\(mealDetail.strIngredient14 ?? "") \(mealDetail.strMeasure14 ?? "")")
                    Text("\(mealDetail.strIngredient15 ?? "") \(mealDetail.strMeasure15 ?? "")")
                    Text("\(mealDetail.strIngredient16 ?? "") \(mealDetail.strMeasure16 ?? "")")
                    Text("\(mealDetail.strIngredient17 ?? "") \(mealDetail.strMeasure17 ?? "")")
                    Text("\(mealDetail.strIngredient18 ?? "") \(mealDetail.strMeasure18 ?? "")")
                    Text("\(mealDetail.strIngredient19 ?? "") \(mealDetail.strMeasure19 ?? "")")
                    Text("\(mealDetail.strIngredient20 ?? "") \(mealDetail.strMeasure20 ?? "")")
                }
            }
            
                    
        }.onAppear {
            detailViewModel.fetchDetailForDessert()
        }
        .navigationTitle(Text("\(detailViewModel.mealName)"))
    }
}

#Preview {
    ListView()
}
