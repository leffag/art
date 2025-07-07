//
//  ArtistInfo.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct ArtistInfo: View {
    let artist: Artist
    
    var body: some View {
        ScrollView{
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(height: 384 ,alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            Text("Biography")
                .font(.title)
            Text(artist.bio)
                .font(.title2)
                .foregroundStyle(.gray)
            Image(artist.works[0].image)
            Text(artist.works[0].title)
        }
    }
}

#Preview {
    ArtistInfo(artist: parseArtists()[0])
}
