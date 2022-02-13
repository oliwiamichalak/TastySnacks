//
//  DetailView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 11/02/2022.
//

import SwiftUI

struct DetailView: View {
    let tastySnack: TastySnack

    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            TastySnacksRemoteImage(urlString: tastySnack.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(tastySnack.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(tastySnack.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: tastySnack.calories)
                    NutritionInfo(title: "Carbs", value: tastySnack.carbs)
                    NutritionInfo(title: "Protein", value: tastySnack.protein)
                }
            }

            Spacer()

            Button {
                print("test")
            } label: {
                DetailButton(title: "$\(tastySnack.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            DismissButton()
        }, alignment: .topTrailing)
    }
}
