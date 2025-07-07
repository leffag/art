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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ArtistRowView(artist: artists[5])
                ArtistRowView(artist: artists[4])
            }
            .padding(EdgeInsets(top: 19, leading: 21, bottom: 16, trailing: 16))
        }
    }
}

#Preview {
    ContentView()
}

func parseArtists() -> [Artist] {
    let data: Data
    guard let fileURL = Bundle.main.url(forResource: "Artists.json", withExtension: nil) else {
        fatalError("Couldn't find the file in main bundle.")
    }
    //
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
