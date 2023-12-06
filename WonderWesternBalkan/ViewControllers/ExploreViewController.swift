//
//  ExploreViewController.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 3.7.23.
//

import UIKit

class ExploreViewController: UIViewController {
    // MARK: PROPERTIES
    // Outlets
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var ratingView: UIVisualEffectView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityDescription: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bookButton: UIButton!
    
    // Variables
    let gradientLayer = CAGradientLayer()
    var topColor: CGColor?
    var middleColor: CGColor?
    var bottomColor: CGColor?
    
    // Models
    var locationModel = Location.self
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupUI()
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
}

// MARK: - FUNCTIONS
extension ExploreViewController {
    func setupUI() {
        ratingView.layer.cornerRadius = ratingView.frame.height / 2
        bookButton.layer.cornerRadius = bookButton.frame.height / 2
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
        gradientLayer.frame = countryImage.bounds
        setupGradinetColors()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        countryImage.layer.insertSublayer(gradientLayer, at: 0)
    }
}
