//
//  ArtistRowView.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct ArtistRowView: View {
    let artist: Artist
    
    var body: some View {
        HStack(spacing: 16) {
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 96, height: 96, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text(artist.name)
                    .font(.title)
                    .foregroundStyle(.gray)
                Text(artist.bio)
                    .font(.title2)
                    .lineLimit(2)
            }
        }
    }
}
