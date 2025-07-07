//
//  ContentView.swift
//  Art
//
//  Created by Effin Leffin on 06.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(._0)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 96, height: 96, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text("Artists Name")
                    .font(.title)
                    .foregroundStyle(.gray)
                Text("biobiobiobioiboibobiobiobioboioiboiobiobiobiobioioiobioioboiboiobi")
                    .font(.title2)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
