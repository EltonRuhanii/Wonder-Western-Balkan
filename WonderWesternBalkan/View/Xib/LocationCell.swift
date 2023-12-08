//
//  LocationCell.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 13.6.23.
//

import UIKit

class LocationCell: UICollectionViewCell {
    @IBOutlet weak var viewHolder: UIView!
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var locationName1: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    func setupUI() {
        viewHolder.layer.cornerRadius = 25
        cityImage.layer.cornerRadius = 25
        blurView.layer.cornerRadius = 25
        blurView.clipsToBounds = true
    }

}
