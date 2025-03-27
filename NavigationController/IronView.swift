//
//  IronView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct IronView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> IronViewController {
        return IronViewController()
    }

    func updateUIViewController(_ uiViewController: IronViewController, context: Context) {}

}

#Preview {
    IronView()
        .edgesIgnoringSafeArea(.all)
}
