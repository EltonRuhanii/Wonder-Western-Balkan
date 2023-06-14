//
//  CountryModel.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation

struct CountryModel {
    var rating: Double
    var isFavorited: Bool
    var city: String
    var country: String
    var destinations: Int
    var locationModel: String
}

struct LocationModel {
    var locationPhoto: String
    var city: String
    var country: String
    var name1: String
    var name2: String
    var description: String
}
