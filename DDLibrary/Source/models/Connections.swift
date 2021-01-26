//
//  Connections.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Connections: Codable {
    open var groupAffiliation, relatives: String

    enum CodingKeys: String, CodingKey {
        case groupAffiliation = "group-affiliation"
        case relatives
    }

    init(groupAffiliation: String, relatives: String) {
        self.groupAffiliation = groupAffiliation
        self.relatives = relatives
    }
}
