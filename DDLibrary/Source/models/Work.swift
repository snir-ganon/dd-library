//
//  Work.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Work: Codable {
    open var occupation, base: String

    init(occupation: String, base: String) {
        self.occupation = occupation
        self.base = base
    }
}
