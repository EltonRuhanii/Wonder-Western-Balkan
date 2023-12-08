//
//  Database.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation
import CoreLocation

class Database {
    //TODO: Make number of destination responsive to the numer of locations in a country
//    var macedoniaCount = Database().getLocationsCountry(country: .northMacedonia).count
    
    // MARK: - COUNTRIES
    var countries: [Country] = [
        Country(rating: 4.7, noOfLocations: 4, countryName: "Kosova", countryPhoto: "Kosova", countryLocations: "kosovaLocations"),
        Country(rating: 4.8, noOfLocations: 5, countryName: "Albania", countryPhoto: "Albania", countryLocations: "albaniaLocations"),
        Country(rating: 4.3, noOfLocations: 2, countryName: "Montenegro", countryPhoto: "Montenegro", countryLocations: "montengroLocations"),
        Country(rating: 4.0, noOfLocations: 2, countryName: "North Macedonia", countryPhoto: "Macedonia", countryLocations: "macedoniaLocations")
    ]
    
    // MARK: - LOCATIONS
    private let allLocations: [Location] = [
        Location(
            category: .cities,
            country: .kosovo,
            locationLabel: "Prishtina",
            countryLabel: "Kosovo", 
            historyLabel: "Capital city of Kosovo. A good place for relax time. A lot of restaurants and lounge bar’s for a fun night out with friends. Welcoming culture for tourists."),
        Location(
            category: .cities,
            country: .albania,
            locationLabel: "Grand Park",
            countryLabel: "Albania",
            historyLabel: "Grand Park of Tirana is 289 hectare public park situated in the capital city of Albania. With its greenery and a gorgeous lake. It’s a park for families to hangout and have a picnic in the summer."),
        Location(
            category: .cities,
            country: .northMacedonia,
            locationLabel: "Skopje",
            countryLabel: "N. Macedonia",
            historyLabel: "Skopje, the capital and largest city of North Macedonia, is a vibrant and dynamic metropolis that seamlessly blends history, culture, and modernity. Nestled along the Vardar River and surrounded by mountainous landscapes, Skopje has been a crossroads of civilizations for centuries, resulting in a rich tapestry of influences visible in its architecture, cuisine, and traditions."),
        Location(
            category: .beach,
            country: .montenegro,
            locationLabel: "Budva",
            countryLabel: "Montenegro",
            historyLabel: "Budva, situated on the Adriatic coast of Montenegro, is a captivating coastal town celebrated for its historic charm and vibrant atmosphere. With its well-preserved medieval Old Town, Budva showcases narrow cobblestone streets, ancient walls, and picturesque squares. The town is famous for its beautiful beaches, including the popular Mogren Beach and the iconic Sveti Stefan island-hotel. Budva's dynamic nightlife, diverse dining options, and cultural festivals make it a sought-after destination for tourists looking to explore the rich history and lively energy of the Montenegrin coast."),
        Location(
            category: .beach,
            country: .albania,
            locationLabel: "Green Coast",
            countryLabel: "Albania",
            historyLabel: "A private coast line neighbourhood with over then 50 houses. A blue coast line sea, located in Dhermi, Albania. It’s a must visit if you’re wanting a private time with our family/friends in your villa."),
        Location(
            category: .beach,
            country: .albania,
            locationLabel: "Three Islands",
            countryLabel: "Albania",
            historyLabel: "Three Islands are located in Ksamil, Albania. A crystal clear sea, with many beaches around three islands on the centre. Also Blue eye is near it so if you’re a fan of sea you must visit it."),
        Location(
            category: .mountains,
            country: .kosovo,
            locationLabel: "Rugova",
            countryLabel: "Kosovo",
            historyLabel: "Rugova is known for its stunning natural beauty, Rugova is characterised by majestic mountains, pristine landscapes, and picturesque valleys. Breathtaking canyons make it a must visit if you’re visiting Kosovo."),
        Location(
            category: .mountains,
            country: .kosovo,
            locationLabel: "Brezovice",
            countryLabel: "Kosovo",
            historyLabel: "Brezovica is a renowned ski resort situated in the Star Mountains. This picturesque destination is celebrated for its exceptional nature beauty and offer a winter wonderland for outdoor enthusiasts. Brezovia is a haven for skiing and snowboarding enthusiasts, with its slopes attracting visitors from near and far."),
        Location(
            category: .mountains,
            country: .albania,
            locationLabel: "Valbona",
            countryLabel: "Albania",
            historyLabel: "Valbona National Park is one of the most enchanting and pristine natural landscapes in Albania. This national park is renowned for its breathtaking alpine scenery, dense forests, and crystal-clear rivers. It encompasses the Valbona Valley, a picturesque glacial valley surrounded by high mountain peaks, including the stunning Accursed Mountains"),
        Location(
            category: .mountains, 
            country: .northMacedonia,
            locationLabel: "Mavrovo",
            countryLabel: "N. Macedonia",
            historyLabel: "Mavrovo, located in the western part of North Macedonia, is a serene region renowned for its stunning Mavrovo National Park. This area is characterized by picturesque landscapes, including the artificial Mavrovo Lake, surrounded by mountains. The national park offers outdoor activities such as hiking, skiing, and wildlife observation. Mavrovo also features traditional villages, providing a tranquil retreat with a distinct blend of nature and culture."),
        Location(
            category: .nightlife,
            country: .kosovo,
            locationLabel: "Venom",
            countryLabel: "Kosovo",
            historyLabel: "Venom is one of the biggest Night clubs in Kosovo, offering an awesome nightlife. With artist from all over the world. Big area, awesome music, and delicious cocktail’s. If you’re a nightlife person it’s a must visit club."),
        Location(
            category: .nightlife,
            country: .albania,
            locationLabel: "Blloku",
            countryLabel: "Albania",
            historyLabel: "If you’re a night life person In Tirana you must visit Blloku, it’s an awesome area for bar’s. You’ll have an amazing time with the music and the people at Blloku."),
        Location(
            category: .nightlife,
            country: .montenegro,
            locationLabel: "Small Beach",
            countryLabel: "Montenegro",
            historyLabel: "The Small Beach in Ulcinj, Montenegro, is a charming coastal spot known for its intimate size and inviting atmosphere. Nestled along the Adriatic Sea, this beach offers a relaxed setting with soft sands and clear blue waters. A lot of night life activity after 9PM till the morning.")
    ]
    
    // MARK: - GET LOCATIONS FUNCTIONS
    /// Get Locations by country - User selects a preferd country, functions return only locations of the selected country
    /// - Parameter country: Selected country by user
    /// - Returns: Only locations from that country
    func getLocationsCountry(country: LocationCountry) -> [Location] {
        return allLocations.filter { location in
            location.country == country
        }
    }
    
    /// Get locations by category - User selects a preferd category, functions return only location of the selected category
    /// - Parameter category: Selected category by user
    /// - Returns: Only lcoations from that category
    func getLocationsCategory(category: LocationCategory) -> [Location] {
        return allLocations.filter { location in
            location.category == category
        }
    }
}
