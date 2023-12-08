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
    @IBOutlet weak var indicator: UIView!
    @IBOutlet weak var descriptionButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    
    // Variables
    let gradientLayer = CAGradientLayer()
    var topColor: CGColor?
    var middleColor: CGColor?
    var bottomColor: CGColor?
    var descriptionStatus: Bool = true
    
    // Models
    var locationModel = Location.self
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIndicator()
        setupGradient()
        setupUI()
        checkIndicatorPostion()
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
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    // Description & Location pressed
    @IBAction func descriptionPressed(_ sender: Any) {
        descriptionStatus = true
        UIView.animate(withDuration: 0.5) {
            self.setupIndicator()
        }
    }
    
    @IBAction func locationPressed(_ sender: Any) {
        descriptionStatus = false
        UIView.animate(withDuration: 0.5) {
            self.setupIndicator()
        }
    }
}

// MARK: - FUNCTIONS
extension ExploreViewController {
    func setupUI() {
        ratingView.layer.cornerRadius = ratingView.frame.height / 2
        indicator.layer.cornerRadius = indicator.frame.width / 2
    }
    
    func setupIndicator() {
        // setup postions
        let indicatorLeft: CGFloat = descriptionButton.frame.midX - 2.5
        let indicatorRight: CGFloat = locationButton.frame.midX - 2.5
        
        // move indicator
        if descriptionStatus == true {
            indicator.frame = CGRect(x: indicatorLeft, y: 0, width: 5, height: 5)
            descriptionButton.tintColor = UIColor(named: "Text")
            locationButton.tintColor = UIColor(named: "Gray Text")
        } else {
            indicator.frame = CGRect(x: indicatorRight, y: 0, width: 5, height: 5)
            descriptionButton.tintColor = UIColor(named: "Gray Text")
            locationButton.tintColor = UIColor(named: "Text")
        }
    }
    
    // TODO: Change color/opacity when indicator is not in it's position
    func checkIndicatorPostion() {
        if indicator.frame.midX == descriptionButton.frame.midX || indicator.frame.midX == locationButton.frame.midX {
            indicator.layer.opacity = 1
        } else {
            indicator.layer.opacity = 0.3
        }
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
