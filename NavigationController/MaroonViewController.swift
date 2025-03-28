//
//  MaroonViewController.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import UIKit

class MaroonViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.maroon// Maroon
        
        let button = UIButton(type: .system)
        button.setTitle("Click to Iron View", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 10
        button.frame = CGRect(x:0, y:0, width:200, height:60)
        button.center = view.center
        button.addTarget(self, action: #selector(goToIronView), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func goToIronView() {
        let ironVC = IronViewController()
        navigationController?.pushViewController(ironVC, animated: true)
    }
}

extension UIColor {
    static let maroon = UIColor(red: 128/255, green: 0/255, blue: 0/255, alpha: 1.0)
}
