//
//  IronView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct IronView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let ironVC = IronViewController()
        let navigationController = UINavigationController(rootViewController: ironVC)
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

#Preview {
    MaroonView()
        .edgesIgnoringSafeArea(.all)
}
