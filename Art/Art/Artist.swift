//
//  Artist.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct Artist: Codable {
    let name: String
    let bio: String
    let image: String
    let works: [Work]
}

struct Work: Codable {
    let title: String
    let image: String
    let info: String
}

struct Artists: Codable {
    let artists: [Artist]
}
