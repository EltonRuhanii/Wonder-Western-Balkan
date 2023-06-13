//
//  CountryCell.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 13.6.23.
//

import UIKit

class CountryCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var capitalCity: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var numberOfDestinations: UILabel!
    @IBOutlet weak var ratingHolder: UIView!
    @IBOutlet weak var nextHolder: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ratingHolder.layer.cornerRadius = 20
        nextHolder.layer.cornerRadius = 20
    }

}
