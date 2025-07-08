//
//  ContentView.swift
//  Art
//
//  Created by Effin Leffin on 06.07.2025.
//

import SwiftUI

struct ContentView: View {
    let artists = parseArtists()
    
    var body: some View {
        NavigationView() {
            List(artists, id: \.name) {
                artist in
                NavigationLink() {
                    ArtistInfoView(artist: artist)
                } label: {
                    ArtistRowView(artist: artist)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

func parseArtists() -> [Artist] {
    let data: Data
    
    guard let fileURL = Bundle.main.url(forResource: "Artists.json", withExtension: nil)
    else {
        fatalError("Couldn't find the file in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: fileURL)
    } catch {
        fatalError("Couldn't find")
    }
    
    do {
        let decoder = JSONDecoder()
        let artists = try decoder.decode(Artists.self, from: data)
        return artists.artists
    } catch {
        fatalError("Couldn't read")
    }
}
