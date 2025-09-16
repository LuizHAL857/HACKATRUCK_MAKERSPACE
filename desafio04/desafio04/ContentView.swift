//
//  ContentView.swift
//  desafio04
//
//  Created by Turma02-19 on 15/09/25.
//

import SwiftUI

struct ContentView: View {
    
    struct Song : Identifiable{
        
        var id: Int
        var name: String
        var artist: String
        var capa: String
        
    }
    
    var arrayMusicas = [
        Song(id:1,
             name: "Black Catcher",
             artist: "Vickeblanka",
             capa:"https://i.scdn.co/image/ab67616d0000b2732c79651c5f5dfe3c45bf0a2b"),
        
        Song(id:2,
             name:"Baka Mitai",
             artist:"Mitsuharu Fukuyama",
             capa:"https://f4.bcbits.com/img/a1893010356_10.jpg"),
        
        Song(id:3,
             name:"Gurenge",
             artist:"LiSA",
             capa:"https://images.genius.com/7b022443ec2c441976c8a9c9679c38b6.1000x1000x1.png"),
        
        Song(id:4,
             name:"Na Sola Da Bota",
             artist:"Rionegro e Solimoes",
             capa:"https://tm.ibxk.com.br/2018/07/31/31124535967047.jpg"),
        
        Song(id:5,
             name:"I Will Survive",
             artist:"Gloria Gaynor",
             capa:"https://cdn.mercidisco.com.br/image/cache/data/CD'S/gloria%20gaynor%20i%20will-800x800.jpg"),
        
        Song(id:6,
             name:"Galinha Pintadinha",
             artist:"Ela mesma",
             capa: "https://yt3.googleusercontent.com/8x1w-A0ritsPGhO7WfMAyA4OIDAGUpmD3fMS_XVQyYtTnWXwHnAQQTafE0S76Bl65HBo6SNj=s900-c-k-c0x00ffffff-no-rj"),
        
        Song(id:7,
             name:"Never Gonna Give You UP",
             artist:"Rick Astley",
             capa:"https://m.media-amazon.com/images/I/61mUMqufr9L._UF894,1000_QL80_.jpg")
             
        
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)
                ScrollView{
                    
                    
                    
                    VStack {
                        Image("hackatruck01").resizable()
                            .frame(width: 200, height: 200)
                        
                        HStack{
                            Text("HackaFM")
                                .font(.title)
                                .bold()
                            
                            Spacer()
                        }
                        
                        HStack{
                            Image("hackatruck01")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text("HackaSong")
                                .bold()
                            
                            
                            Spacer()
                            
                        }
                        ForEach(arrayMusicas){ i in
                            HStack{
                                VStack{
                                    
                                    NavigationLink(destination: DetailView(
                                        nome: i.name,
                                        capa: i.capa,
                                        autor: i.artist),
                                                   label: {
                                        AsyncImage(url: URL(string:i.capa)){
                                            phase in
                                            
                                            switch phase {
                                            case .empty:
                                                // Placeholder enquanto carrega
                                                ProgressView()
                                                    .frame(width: 60, height: 60)
                                            case .success(let image):
                                                image
                                                    .resizable()
                                                
                                                    .frame(width: 70, height: 70)
                                                
                                            case .failure(_):
                                                // Imagem alternativa em caso de erro
                                                Image(systemName: "photo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 80, height: 80)
                                                    .foregroundColor(.gray)
                                            @unknown default:
                                                EmptyView()
                                            }
                                        }
                                    })
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                VStack{
                                    
                                    Text(i.name)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.subheadline)
                                    Text(i.artist)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.caption)
                                    
                                }
                                
                                VStack{
                                    Text("...")
                                        .font(.title)
                                        .bold()
                                }.frame(maxWidth: .infinity, alignment: .trailing)
                                    .multilineTextAlignment(.trailing)
                                
                                
                            }
                            
                            
                        }
                        Text("Sugeridos")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arrayMusicas){i in
                                    
                                    VStack{
                                        AsyncImage(url: URL(string:i.capa)){
                                            phase in
                                            
                                            switch phase {
                                            case .empty:
                                                
                                                ProgressView()
                                                    .frame(width: 60, height: 60)
                                            case .success(let image):
                                                image
                                                    .resizable()
                                                
                                                    .frame(width: 200, height: 200)
                                                
                                            case .failure(_):
                                                
                                                Image(systemName: "photo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 80, height: 80)
                                                    .foregroundColor(.gray)
                                            @unknown default:
                                                EmptyView()
                                            }
                                        }
                                        
                                        Text(i.name)
                                    }
                                }
                            }
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                }
            }
        }
    }
}


struct DetailView:View {
    let nome: String
    let capa: String
    let autor: String
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                AsyncImage(url: URL(string:capa)){
                    phase in
                    
                    switch phase {
                    case .empty:
                      
                        ProgressView()
                            .frame(width: 250, height: 250)
                    case .success(let image):
                        image
                            .resizable()
                        
                            .frame(width: 250, height: 250)
                        
                    case .failure(_):
                        // Imagem alternativa em caso de erro
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                Text(nome)
                    .font(.title)
                    .bold()
                Text(autor)
                    .bold()
                
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                     
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 40, height: 40)
                }.padding()
                
            }.multilineTextAlignment(.center)
                .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    ContentView()
}

