//
//  EmptyState.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 13/02/2022.
//

import SwiftUI

struct EmptyState: View {

    let imageName: String
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyOrderState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "emptyOrder", message: "Long sad message about empty order list. East something!")
    }
}
