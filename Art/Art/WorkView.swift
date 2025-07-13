//
//  WorkView.swift
//  Art
//
//  Created by Effin Leffin on 08.07.2025.
//

import SwiftUI

struct WorkView: View {
    let work: Work
    
    var body: some View {
        Image(work.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    WorkView(work: parseArtists()[0].works[0])
}
