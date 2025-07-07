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
                ArtistRowView(artist: artists[0])
                ArtistRowView(artist: artists[1])
            }
            .padding(EdgeInsets(top: 19, leading: 21, bottom: 16, trailing: 16))
        }
    }
}

#Preview {
    ContentView()
}

func parseArtists() -> [Artist] {
    return [
        .init(
            name: "Pablo Picasso",
            bio: "Pablo Ruiz y Picasso (25 October 1881 вЂ“ 8 April 1973), also known as Pablo Picasso, was a Spanish painter, sculptor, printmaker, ceramicist, stage designer, poet and playwright who spent most of his adult life in France.",
            image: "0",
            works: [
                .init(
                    title: "Guernica",
                    image: "Picasso1",
                    info: "Guernica is a mural-sized oil painting on canvas by Spanish artist Pablo Picasso completed by June 1937. The painting, which uses a palette of gray, black, and white, is regarded by many art critics as one of the most moving and powerful anti-war paintings in history. Standing at 3.49 metres (11 ft 5 in) tall and 7.76 metres (25 ft 6 in) wide, the large mural shows the suffering of people, animals, and buildings wrenched by violence and chaos."
                )
            ]
        ),
        .init(
            name: "dfy uju",
            bio: "biobioiboiboiboibbiobibioiboiboiboiboboiboiboboiboboiboiobiobiobobi",
            image: "1",
            works: [
                .init(
                    title: "workwopkwork",
                    image: "Frida1",
                    info: "infoinfoinfo")])
    ]
}
