//
//  Hero.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Hero: Codable {
    open var id, name: String
    open var powerstats: Powerstats
    open var biography: Biography
    open var appearance: Appearance
    open var work: Work
    open var connections: Connections
    open var image: Image

    init(id: String, name: String, powerstats: Powerstats, biography: Biography, appearance: Appearance, work: Work, connections: Connections, image: Image) {
        self.id = id
        self.name = name
        self.powerstats = powerstats
        self.biography = biography
        self.appearance = appearance
        self.work = work
        self.connections = connections
        self.image = image
    }
}
