//
//  Result.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Result: Codable {
    open var response, resultsFor: String
    open var results: [Hero]

    enum CodingKeys: String, CodingKey {
        case response
        case resultsFor = "results-for"
        case results
    }

    init(response: String, resultsFor: String, results: [Hero]) {
        self.response = response
        self.resultsFor = resultsFor
        self.results = results
    }
}
