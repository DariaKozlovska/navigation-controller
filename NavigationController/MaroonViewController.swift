import UIKit

class MaroonViewController: UIViewController {

    // Zmienna dla UILabel
    var counterLabel: UILabel!
    static var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.maroon  // Kolor tła na Maroon
        
        // Ustawienie tytułu
        self.title = "Maroon View"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = true
        
        // Ustawienie koloru tytułu na biały
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        
        // Ustawienie dużych tytułów
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        
        // Dodanie UILabel do wyświetlania tekstu
        counterLabel = UILabel()
        counterLabel.text = "The counter was tapped \(MaroonViewController.counter) times"
                counterLabel.font = UIFont.systemFont(ofSize: 24)
                counterLabel.textColor = .white
                counterLabel.textAlignment = .center
                counterLabel.translatesAutoresizingMaskIntoConstraints = false
                
                // Dodanie UILabel do widoku
                view.addSubview(counterLabel)
                
                // Ustawienie ograniczeń (constraints) dla UILabel
                NSLayoutConstraint.activate([
                    counterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    counterLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 110)
                ])
        
        // Dodanie przycisku do widoku
        let button = UIButton(type: .system)
        button.setTitle("Click to Iron View", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 60)
        button.center = view.center
        button.addTarget(self, action: #selector(goToIronView), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    // Akcja powrotu do poprzedniego widoku
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    // Akcja przejścia do IronView
    @objc func goToIronView() {
        let ironVC = IronViewController()
        navigationController?.pushViewController(ironVC, animated: true)
        MaroonViewController.counter += 1
    }
}

// Rozszerzenie dla koloru Maroon
extension UIColor {
    static let maroon = UIColor(red: 128/255, green: 0/255, blue: 0/255, alpha: 1.0)
}
