//
//  RegisterCompletedViewController.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import UIKit

class RegisterCompletedViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profilePhoto: UIView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var exploreButton: UIButton!
    // variables
    let gradientLayer = CAGradientLayer()
    var topColor: CGColor?
    var middleColor: CGColor?
    var bottomColor: CGColor?
    var usernameLabel: String = ""
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupUI()
        username.text = usernameLabel
    }
    
    
    /// This function will change gradient colors when screen apparance is toggled
    /// - Parameter previousTraitCollection: This is previous scree apparance it will come as a UITraitCollecton
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
           super.traitCollectionDidChange(previousTraitCollection)
           
           // Check if the appearance has changed
           if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
               // Update gradient colors based on appearance
               setupGradinetColors()
           }
       }
    
    @IBAction func explorePressed(_ sender: Any) {
        if let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            homeVC.usernameLabel = usernameLabel
            navigationController?.pushViewController(homeVC, animated: true)
        }
    }
    
}

// MARK: - FUNCTIONS
extension RegisterCompletedViewController {
    func setupUI() {
        profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2
        profilePhoto.layer.borderWidth = 2
        profilePhoto.layer.borderColor = UIColor(named: "Text")?.cgColor
        exploreButton.layer.cornerRadius = 25
    }
    
    func setupGradinetColors() {
        if traitCollection.userInterfaceStyle == .dark {
            topColor = UIColor(named: "Background")?.withAlphaComponent(0.2).cgColor
            middleColor = UIColor(named: "Background")?.withAlphaComponent(0.4).cgColor
            bottomColor = UIColor(named: "Background")?.withAlphaComponent(1).cgColor
        } else if traitCollection.userInterfaceStyle == .light {
            topColor = UIColor(named: "Background")?.withAlphaComponent(0.2).cgColor
            middleColor = UIColor(named: "Background")?.withAlphaComponent(0.4).cgColor
            bottomColor = UIColor(named: "Background")?.withAlphaComponent(1).cgColor
        }
        gradientLayer.colors = [topColor!, middleColor!, bottomColor!]
    }
    
    func setupGradient() {
        gradientLayer.frame = imageView.bounds
        setupGradinetColors()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        imageView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
