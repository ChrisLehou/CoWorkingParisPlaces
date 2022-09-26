//
//  DataModel.swift
//  PlacesOnMapUITests
//
//  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import Foundation

//let file = Bundle.main.url(forResource: "places.json", withExtension: nil)
//let jsonData = try! Data(contentsOf: file!)
//let places: [Place] = try! JSONDecoder().decode([Place].self, from: jsonData)

func load<T: Decodable>(filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(file) from main bundle:\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(file) as \(T.self):\n\(error)")
    }
}
var places: [Place] = load(filename: "places.json")
