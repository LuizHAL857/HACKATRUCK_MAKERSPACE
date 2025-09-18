//
//  AmiiboDetailView.swift
//  Desafio06
//
//  Created by Turma02-19 on 17/09/25.
//

import SwiftUI

struct AmiiboDetailView: View {
    let amiibo: Amiibo

    var body: some View {
        ZStack{
            
            LinearGradient(
                               gradient: Gradient(colors: [Color.rosinha, Color.rosona]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing
                           )
                           .edgesIgnoringSafeArea(.all)
            ScrollView {
                
                VStack(spacing: 20) {
                    AsyncImage(url: URL(string: amiibo.image)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    
                    Text(amiibo.name)
                        .font(.largeTitle)
                        .bold()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Amiibo Series: \(amiibo.amiiboSeries)")
                        Text("Game Series: \(amiibo.gameSeries)")
                        Text("Type: \(amiibo.type)")
                        
                        Group {
                            if let na = amiibo.release.na {
                                Text("Release NA: \(na)")
                            }
                            if let eu = amiibo.release.eu {
                                Text("Release EU: \(eu)")
                            }
                            if let jp = amiibo.release.jp {
                                Text("Release JP: \(jp)")
                            }
                            if let au = amiibo.release.au {
                                Text("Release AU: \(au)")
                            }
                        }
                    }.bold()
                    .font(.body)
                    .padding()
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle(amiibo.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
