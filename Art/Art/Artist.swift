//
//  Artist.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct Artist {
    let name: String
    let bio: String
    let image: Int
    let works: [Work]
}

struct Work {
    let title: String
    let image: Image
    let info: String
}
