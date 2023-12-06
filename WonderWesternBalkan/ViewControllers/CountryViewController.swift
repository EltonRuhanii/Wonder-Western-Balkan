//
//  CountryViewController.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 13.6.23.
//

import UIKit

class CountryViewController: UIViewController {
    // MARK: PROPERTIES
    //Outlets
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var destinationsLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    //Variables
    let gradientLayer = CAGradientLayer()
    var topColor: CGColor?
    var middleColor: CGColor?
    var bottomColor: CGColor?
    var country: LocationCountry = .kosovo
    var categroy: LocationCategory = .beach
    var countryImageName: String = ""
    
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupCollectionView()
        setupUIElements()
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
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - FUNCTIONS
extension CountryViewController {
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
//        countryImage.image = UIImage(named: country)
        countryImage.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setupUIElements() {
        countryImage.image = UIImage(named: countryImageName)
    }
}

extension CountryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func setupCollectionView() {
        collectionView.register(UINib(nibName: "LocationCell", bundle: nil), forCellWithReuseIdentifier: "LocationCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let location = Database().getLocationsCountry(country: country)
        
        return location.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCell", for: indexPath) as! LocationCell
        
        let location = Database().getLocationsCountry(country: country)[indexPath.item]
        
        cell.locationName1.text = location.locationLabel
        cell.cityImage.image = UIImage(named: location.locationLabel)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.width * 0.57
        let height = width * 2
        return CGSize(width: width, height: height)
    }
    
}
