//
//  ContentView.swift
//  Desafio06
//
//  Created by Turma02-19 on 17/09/25.
//
import SwiftUI


struct AmiiboListView: View {
    @StateObject private var viewModel = AmiiboViewModel()

    var body: some View {
        NavigationView {
            ZStack{
                
                LinearGradient(
                                   gradient: Gradient(colors: [Color.rosinha, Color.rosona]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing
                               )
                               .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        ForEach(viewModel.amiibos) { amiibo in
                            NavigationLink(destination: AmiiboDetailView(amiibo: amiibo)) {
                                HStack {
                                    AsyncImage(url: URL(string: amiibo.image)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    
                                    Text(amiibo.name)
                                        .font(.headline)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                .navigationTitle("Amiibos")
                .onAppear {
                    viewModel.fetchAmiibos()
                }
            }
        }
    }
}


#Preview {
    AmiiboListView()
}


