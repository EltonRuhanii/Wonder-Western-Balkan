//
//  Database.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation

class Database {
    // MARK: - Countries
    var countries: [CountryModel] = [
        CountryModel(rating: 4.9, isFavorited: false, city: "Prishtina", country: "Kosova", destinations: 9),
        CountryModel(rating: 4.5, isFavorited: false, city: "Tirana", country: "Albania", destinations: 8),
        CountryModel(rating: 4.3, isFavorited: false, city: "Skopje", country: "North Macedonia", destinations: 5),
        CountryModel(rating: 4.7, isFavorited: false, city: "Podgorica", country: "Montenegro", destinations: 5)]
}
