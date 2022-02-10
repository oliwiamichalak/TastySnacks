//
//  LoadingView.swift
//  TastySnacks
//
//  Created by Oliwia Michalak on 10/02/2022.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandSecondary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)

            ActivityIndicator()
        }
    }
}
