//
//  TastySnacksApp.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 09/02/2022.
//

import SwiftUI

@main
struct TastySnacksApp: App {

    var order = Order()

    var body: some Scene {
        WindowGroup {
            TastySnacksTabView().environmentObject(order)
        }
    }
}
