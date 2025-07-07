//
//  WorkInfoView.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct WorkInfoView: View {
    let work: Work
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(work.image)
            Text(work.title)
                .font(.title)
            Text(work.info)
        }
    }
}

#Preview {
    WorkInfoView(work: parseArtists()[0].works[0])
}
