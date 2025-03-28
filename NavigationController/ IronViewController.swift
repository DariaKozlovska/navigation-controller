//
//   IronViewController.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import UIKit

class IronViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        
        let button = UIButton(type: .system)
        button.setTitle("Click to MaroonView", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.maroon
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 60)
        button.center = view.center
        button.addTarget(self, action: #selector(goToMaroonView), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func goToMaroonView() {
        navigationController?.popViewController(animated: true)
    }
}
