//
//  NutritionInfo.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

struct NutritionInfo: View {
    let title: String
    let value: Int

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

struct NutritionInfo_Previews: PreviewProvider {
    static var previews: some View {
        NutritionInfo(title: "Calories", value: 99)
    }
}
