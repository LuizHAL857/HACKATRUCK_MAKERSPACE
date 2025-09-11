//
//  ContentView.swift
//  Desafio01fixed
//
//  Created by Turma02-19 on 10/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    @State var alerta: Bool = false
    var body: some View {
        ZStack {
            Image("hackatruck01")
                .resizable()
                .frame(width:390, height:900)
                .opacity(0.2)
            
            VStack {
              Spacer()
                Text("Bem vindo, \(nome)")
                    .font(.title)
                    
                    
                
                    
                
                
                
                TextField(
                    " Digite seu nome",
                    text:$nome
                )
                .multilineTextAlignment(.center)
                
                Spacer()
                
                
                
                
                
                
                Image("hackatruck02")
                    .resizable()
                    .frame(width: 300, height: 200)
                Spacer()
                
                
                
                
                
               
                
                Button("Entrar"){
                    alerta.toggle()
                    
                }.alert("ALERTA", isPresented: $alerta){
                   
                }message: {
                    Text("ALERTA ALERTA ALERTA")
                        .font(.title)
                }
                    Spacer()
                
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
