//
//  MaroonView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct MaroonView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MaroonViewController {
        return MaroonViewController()
    }

    func updateUIViewController(_ uiViewController: MaroonViewController, context: Context) {}

}

#Preview {
    MaroonView()
        .edgesIgnoringSafeArea(.all)
}
