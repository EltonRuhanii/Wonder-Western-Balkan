//
//  Database.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation

class Database {
    // MARK: - COUNTRIES
    var countries: [CountryModel] = [
        CountryModel(rating: 4.9, isFavorited: false, city: "Prishtina", country: "Kosova", destinations: 9, locationModel: "kosovaLocations"),
        CountryModel(rating: 4.5, isFavorited: false, city: "Tirana", country: "Albania", destinations: 8, locationModel: "albaniaLocations"),
        CountryModel(rating: 4.3, isFavorited: false, city: "Skopje", country: "North Macedonia", destinations: 5, locationModel: "macedoniaLocations"),
        CountryModel(rating: 4.7, isFavorited: false, city: "Podgorica", country: "Montenegro", destinations: 5, locationModel: "montegroLocations")]
    
    // MARK: - LOCATIONS
    // KOSOVO
    var kosovaLocations: [LocationModel] = [
    LocationModel(locationPhoto: "Prishtina Mall", city: "PRISHTINA", country: "Kosova", name1: "Prishtina", name2: "Mall", description: "Biggest mall in the balkan"),
    LocationModel(locationPhoto: "Germia", city: "PRISHTINA", country: "Kosova", name1: "Germia", name2: "Park", description: "Grand park of Prishtina"),
    LocationModel(locationPhoto: "Marble Cave", city: "GADIME", country: "Kosova", name1: "Marble", name2: "Cave", description: "1260m deep marble cave"),
    LocationModel(locationPhoto: "Rugova", city: "PEJA", country: "Kosova", name1: "", name2: "Rugova", description: "Mountain trails"),
    LocationModel(locationPhoto: "Prizren", city: "PRIZREN", country: "Kosova", name1: "", name2: "Prizren", description: "Old town of Kosova"),
    LocationModel(locationPhoto: "Venom", city: "PRISHTINA", country: "Kosova", name1: "Venom", name2: "Club", description: "Night club"),
    LocationModel(locationPhoto: "Prekaz", city: "PREKAZ", country: "Kosova", name1: "Jashari", name2: "Complex", description: "A historic comples in Prekaz")
    ]
    
    // ALBANIA
    var albaniaLocations: [LocationModel] = [
    LocationModel(locationPhoto: "Grand Park", city: "Tirana", country: "Albania", name1: "Grand", name2: "Park", description: "Grand park of Tirana"),
    LocationModel(locationPhoto: "Ksamil", city: "Ksamil", country: "Albania", name1: "", name2: "Ksamil", description: "Crystal blue water beach"),
    LocationModel(locationPhoto: "Green Coast", city: "Dhermi", country: "Albania", name1: "Green", name2: "Coast", description: "Beach villas & apartments"),
    LocationModel(locationPhoto: "Zins", city: "Durres", country: "Albania", name1: "", name2: "Zins", description: "Hookah bar"),
    LocationModel(locationPhoto: "Tirana", city: "Tirana", country: "Albania", name1: "", name2: "Tirana", description: "Capital city"),
    LocationModel(locationPhoto: "Mrizi i Zanave", city: "Lezhë", country: "Albania", name1: "Mrizi", name2: "Zanave", description: "Traditional food restaurant"),
    ]
    
    // MACEDONIA
    var macedoniaLocations: [LocationModel] = [
    LocationModel(locationPhoto: "SkopjeC", city: "Skopje", country: "North Macedonia", name1: "", name2: "Skopje", description: "Capital City"),
    LocationModel(locationPhoto: "Ohrid", city: "Ohrid", country: "North Macedonia", name1: "", name2: "Ohrid", description: "Lake side city"),
    LocationModel(locationPhoto: "Matka", city: "", country: "North Macedonia", name1: "Matka", name2: "Canyon", description: "Large canyon"),
    LocationModel(locationPhoto: "Zoo", city: "Skopje", country: "North Macedonia", name1: "City", name2: "Zoo", description: "Large zoo in capital city")]
}
