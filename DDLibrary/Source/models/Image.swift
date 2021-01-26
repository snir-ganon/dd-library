//
//  Image.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation

open class Image: Codable {
    open var url: String

    init(url: String) {
        self.url = url
    }
}
