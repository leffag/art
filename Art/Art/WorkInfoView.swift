//
//  WorkInfoView.swift
//  Art
//
//  Created by Effin Leffin on 07.07.2025.
//

import SwiftUI

struct WorkInfoView: View {
    let work: Work
    @State var isShow = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Image(work.image)
                        .resizable()
                        .scaledToFit()
                    
                    Text(work.title)
                        .font(.title)
                    
                    Text(work.info)
                }
                .padding(.horizontal, 16)
            }
            .safeAreaInset(edge: .bottom) {
                Button(action: { isShow = true }) {
                    Text("Развернуть")
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.black)
            }
            
            if isShow {
                ZStack {
                    Color(UIColor.systemBackground)
                        .ignoresSafeArea()
                    
                    WorkView(work: work)
                }
                .overlay(alignment: .bottom) {
                    Button(action: { isShow = false }) {
                        Text("Закрыть")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.black)
                }
            }
        }
    }
}

#Preview {
    WorkInfoView(work: parseArtists()[0].works[0])
}
