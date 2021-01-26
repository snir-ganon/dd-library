//
//  Appearance.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Appearance: Codable {
    open var gender, race: String
    open var height, weight: [String]
    open var eyeColor, hairColor: String

    enum CodingKeys: String, CodingKey {
        case gender, race, height, weight
        case eyeColor = "eye-color"
        case hairColor = "hair-color"
    }

    init(gender: String, race: String, height: [String], weight: [String], eyeColor: String, hairColor: String) {
        self.gender = gender
        self.race = race
        self.height = height
        self.weight = weight
        self.eyeColor = eyeColor
        self.hairColor = hairColor
    }
}
