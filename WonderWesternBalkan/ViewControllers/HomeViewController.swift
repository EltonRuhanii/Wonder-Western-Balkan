//
//  HomeViewController.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let countriesModel: [CountryModel] = Database().countries
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationHelper.hideNavigationBar(self)
        setupCollectionView()
    }
    
}

// MARK: - COLLECTION VIEW
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func setupCollectionView() {
        collectionView.register(UINib(nibName: "CountryCell", bundle: nil), forCellWithReuseIdentifier: "CountryCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countriesModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCell", for: indexPath) as! CountryCell
        
        let countryModel = countriesModel[indexPath.item]
        
        cell.image.image = UIImage(named: countryModel.city)
        cell.rating.text = "\(countryModel.rating)"
        cell.capitalCity.text = countryModel.city
        cell.countryFlag.image = UIImage(named: countryModel.country)
        cell.countryLabel.text = countryModel.country
        cell.numberOfDestinations.text = "+ \(countryModel.destinations)"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.width * 0.7
        let height = width * 2
        return CGSize(width: width, height: height)
    }
}
