//
//  ArtistInfo.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct ArtistInfoView: View {
    let artist: Artist
    
    var body: some View {
        ScrollView {
            VStack {
                Image(artist.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                //TODO: ignoreSaveArea
                
                Text("Biography")
                    .font(.title)
                
                Text(artist.bio)
                    .font(.title2)
                    .foregroundStyle(.gray)
                
                Text("Works")
                
                ForEach(artist.works, id: \.title) { work in
                    NavigationLink() {
                        WorkInfoView(work: work)
                    } label: {
                        VStack {
                            Image(work.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text(work.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ArtistInfoView(artist: parseArtists()[1])
}
