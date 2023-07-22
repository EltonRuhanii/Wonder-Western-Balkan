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
//    var historyModel: CountryHistoryModel
}

struct LocationModel {
    var locationPhoto: String
    var city: String
    var country: String
    var name1: String
    var name2: String
    var description: String
}

struct CountryHistoryModel {
    var photo: String
    var rating: Double
    var country: String
    var description: String
    var price: Int
}

struct CountryLocationModel {
    var locationX: Double
    var locationY: Double
}

struct ReviewModel {
    var profilePhoto: String
    var name: String
    var date: String
    var review: String
}

struct GalleryModel {
    var photo: String
}
