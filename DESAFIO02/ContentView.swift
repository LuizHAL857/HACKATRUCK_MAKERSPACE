//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma02-19 on 11/09/25.
//

import SwiftUI

struct ContentView: View {
    
  
    @State var distancia: Float = 0
    @State var tempo: Float = 0
    @State var velocidade: Float = 0
    @State var imagem: String = "interrogar"
    @State var cor: Color = .gray
    var body: some View {
        
        
            
            VStack {
                
                
                Text("Digite a distância (km):")
                    .bold()
                
                TextField("0", value: $distancia,
                          format: .number)
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .frame(width: 200)
                .multilineTextAlignment(.center)
                .background(.white)
                .cornerRadius(20.0)
                
                Text("Digite o tempo: (h)")
                    .bold()
                
                
                TextField("0", value: $tempo,
                          format: .number)
                .keyboardType(.decimalPad)
                .textContentType(.oneTimeCode)
                .frame(width: 200)
                .multilineTextAlignment(.center)
                .background(.white)
                .cornerRadius(20.0)
                
                Button("Calcular"){
                    
                     
                    if(distancia == 0 ||
                       tempo == 0){
                        
                        velocidade = 0
                        
                    }else{
                        velocidade = distancia / tempo
                    
                    }
                    
                    switch(velocidade){
                        case 0 ... 9.9 :
                            imagem = "caterpie"
                            cor = .verdeClaro
                        case 10 ... 29.9:
                            imagem = "MICHAEL_SCOTT"
                        cor = .azulClaro
                        case 30 ... 69.9:
                            imagem = "macaco"
                        cor = .laranjaClaro
                    case 70 ... 89.9 :
                            imagem = "capitao"
                        cor = .amareloClaro
                       default:
                        imagem = "caterpie"
                        cor = .verdeClaro
                    }
                    if velocidade > 89.9 {
                        imagem = "sonic"
                        cor = .vermelhoClaro
                    }
                 
                }.frame(width: 100, height: 35)
                    .background(.black)
                    .cornerRadius(7.0)
                    .foregroundColor(.orange)
                    
                
                Text(String(format: "%.2f km/h", velocidade))
                    .font(.largeTitle)
                
                Image(imagem)
                    .resizable()
                    .frame(width: 300, height:300)
                    .clipShape(Circle())
                    .padding()
                
                VStack{
                    HStack{
                        VStack{
                            Text("CATERPIE")
                            Text("MICHAEL")
                                
                            Text("CHIMPANZÉ")

                           Text("CAPITÃO")
                            
                            Text("SONIC")

                        }.bold()
                            .multilineTextAlignment(.center)
                        .padding()
                      
                        VStack{
                            Text("(0 - 9.9km/h)")
                            
                            Text("(10 - 29.9km/h)")
                            
                            Text("(30 - 69.9km/h)")
                            
                            Text("(70 - 89.9km/h)")
                            Text("(90 -  INFINITO km/h)")
                            
                        }.bold()
                        .multilineTextAlignment(.center)
                        
                        
                        VStack{
                            Circle()
                                .frame(height: 15)
                                .foregroundColor(.verdeClaro)
                            
                            Circle()
                                .frame(height: 15)
                                .foregroundColor(.azulClaro)
                            
                            Circle()
                                .frame(height: 15)
                                .foregroundColor(.laranjaClaro)
                            Circle()
                                .frame(height: 15)
                                .foregroundColor(.amareloClaro)
                            Circle()
                                .frame(height: 15)
                                .foregroundColor(.vermelhoClaro)
                            

                        }
                
                    }
                
                   
                }.frame(width: 350, height: 120)
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .padding()
                
                
            
        } .frame(maxWidth: .infinity,
                 maxHeight: .infinity)
        .background(cor)
   
            
    }
}
#Preview {
    ContentView()
}
