//
//  SnackListCell.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct SnackListCell: View {
    let name: String
    let price: Double
    let imageUrl: String

    var body: some View {
        HStack {
            Image("testImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("\(price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
            }
            .padding(.leading)
        }
    }
}

struct SnackCell_Previews: PreviewProvider {
    static var previews: some View {
        SnackListCell(
            name: MockData.sampleSnack.name,
            price: MockData.sampleSnack.price,
            imageUrl: MockData.sampleSnack.imageURL
        )
    }
}
