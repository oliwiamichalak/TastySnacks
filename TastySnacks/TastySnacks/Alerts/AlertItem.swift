//
//  AlertItem.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 10/02/2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let buttonType: Alert.Button
}
