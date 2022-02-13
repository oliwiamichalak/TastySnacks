//
//  TastyButton.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

struct TastyButton: View {
    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct DetailButton_Previews: PreviewProvider {
    static var previews: some View {
        TastyButton(title: "test")
    }
}
