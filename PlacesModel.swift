//
//  PlacesModel.swift
//  PlacesOnMapUITests
//
//  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import Foundation

struct Place: Identifiable, Decodable {
    var id: Int
    var name: String
    var lat: Double
    var lon: Double
    var address: String
    var type: String
    var url: String
    var wifi: Bool
}



