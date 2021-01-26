//
//  Biography.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Biography: Codable {
    open var fullName, alterEgos: String
    open var aliases: [String]
    open var placeOfBirth, firstAppearance, publisher, alignment: String

    enum CodingKeys: String, CodingKey {
        case fullName = "full-name"
        case alterEgos = "alter-egos"
        case aliases
        case placeOfBirth = "place-of-birth"
        case firstAppearance = "first-appearance"
        case publisher, alignment
    }

    init(fullName: String, alterEgos: String, aliases: [String], placeOfBirth: String, firstAppearance: String, publisher: String, alignment: String) {
        self.fullName = fullName
        self.alterEgos = alterEgos
        self.aliases = aliases
        self.placeOfBirth = placeOfBirth
        self.firstAppearance = firstAppearance
        self.publisher = publisher
        self.alignment = alignment
    }
}
