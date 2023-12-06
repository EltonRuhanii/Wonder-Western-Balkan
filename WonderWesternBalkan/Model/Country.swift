//
//  CountryModel.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation
import MapKit

struct Country {
    var rating: Double
    var noOfLocations: Int
    var countryName: String
    var countryPhoto: String
    var countryLocations: String
}
// MARK: - Location's
enum LocationCategory: String {
    case nightlife = "Nightlife"
    case beach = "Beach"
    case cities = "Cities"
    case mountains = "Mountains"
}

enum LocationCountry: String {
    case kosovo = "Kosovo"
    case albania = "Albania"
    case northMacedonia = "NorthMacedonia"
    case montenegro = "Montenegro"
}

struct Location {
    var category: LocationCategory
    var country: LocationCountry
    var locationLabel: String
    var countryLabel: String
    var historyLabel: String
}

