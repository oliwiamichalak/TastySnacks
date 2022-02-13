//
//  ContentView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

struct TastySnacksTabView: View {
    var body: some View {
        TabView {
            TastySnackListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }

            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TastySnacksTabView()
    }
}
