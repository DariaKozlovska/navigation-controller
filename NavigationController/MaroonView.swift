//
//  MaroonView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct MaroonView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let maroonVC = MaroonViewController()
        let navigationController = UINavigationController(rootViewController: maroonVC)
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

#Preview {
    MaroonView()
        .edgesIgnoringSafeArea(.all)
}
