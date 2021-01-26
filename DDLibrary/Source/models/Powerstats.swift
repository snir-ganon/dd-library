//
//  Powerstats.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Powerstats: Codable {
    open var intelligence, strength, speed, durability: String
    open var power, combat: String

    init(intelligence: String, strength: String, speed: String, durability: String, power: String, combat: String) {
        self.intelligence = intelligence
        self.strength = strength
        self.speed = speed
        self.durability = durability
        self.power = power
        self.combat = combat
    }
}
