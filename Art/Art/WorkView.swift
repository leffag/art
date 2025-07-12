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
            .background(.blue)
        //TODO: растянуть картинку. разобраться с отступом
    }
}

#Preview {
//    WorkView(work: parseArtists()[0].works[0])
    WorkView(
        work: Work(
            title: "Mareo",
            image: "mareo",
            info: "that's him"
        )
    )
}
