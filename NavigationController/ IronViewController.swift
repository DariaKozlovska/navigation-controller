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
        
        self.title = "Iron View"  // Tytuł dla tego widoku w nawigacji
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = true
        
        // Ustawienie dużych tytułów
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        
//        przycisk navigacji
        let button = UIButton(type: .system)
        button.setTitle("\(MaroonViewController.counter)", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = UIColor.maroon
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 60)
        button.center = view.center
        button.addTarget(self, action: #selector(goToMaroonView), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func goBack() {
        // Powrót do poprzedniego widoku
        navigationController?.popViewController(animated: true)
    }
    
    @objc func goToMaroonView() {
        let maroonVC = MaroonViewController()
        navigationController?.pushViewController(maroonVC, animated: true)
        MaroonViewController.counter+=1
    }
}
