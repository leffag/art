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
            VStack(spacing: 8) {
                Image(artist.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottomLeading) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(artist.name)
                                .font(.title)
                            
                            Text("Author")
                        }
                        .padding(.leading, 26)
                        .padding(.bottom, 24)
                    }
                
                VStack(spacing: 32) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Biography")
                            .font(.title)
                        
                        Text(artist.bio)
                            .font(.title2)
                            .foregroundStyle(.gray)
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Works")
                            .font(.title)
                        
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
                .padding(.horizontal, 16)
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ArtistInfoView(artist: parseArtists()[1])
}
