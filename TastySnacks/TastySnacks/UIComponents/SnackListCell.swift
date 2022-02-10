//
//  SnackListCell.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct SnackListCell: View {
    let tastySnack: TastySnack

    var body: some View {
        HStack {
            TastySnacksRemoteImage(urlString: tastySnack.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(tastySnack.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("\(tastySnack.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
            }
            .padding(.leading)
        }
    }
}
