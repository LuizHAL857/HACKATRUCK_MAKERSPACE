
import Foundation
import SwiftUI

struct menuView: View{
//    @StateObject private var DayStreakManager
    @ObservedObject var manager : StreakManager
    @State var streak: Int = 780
    @Binding var Nome: String
    var body: some View {
        NavigationStack{
        ZStack{
            Color.paleSilver
                .ignoresSafeArea()
            
            
            ScrollView{
                
                    VStack{
                        
                        
                        HStack{
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 175)
                            
                            Text("Nine Lives Study")
                                .bold()
                                .font(.largeTitle)
                            
                            Spacer()
                            Spacer()
                        }
                        Spacer()
                        
                        
                        //NOME
                        
                        
                        Text("Olá, \(Nome)")
                            .font(.title)
                        
                        HStack{
                            
                            //GATO
                            
                            Image("cat")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                            
                            ZStack{
                                StreakCardView(manager: manager, title: "Dias")
                            }
                        }
                        Spacer()
                    }
                    
                //NAVIGATION
                
                NavigationLink (destination: ClockView(manager: manager)){
                        HStack{
                            Image(systemName: "clock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            Text("Timer")
                                .font(.title2)
                        }
                                        }
                                        .padding()
                                        .frame(width: 270,height: 70)
                                        .background(.liverChestnut)
                                        .cornerRadius(15)
                                        .foregroundColor(.paleSilver)
                
                NavigationLink (destination: ClockView(manager: manager)){
                        HStack{
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            Text("Cronograma")
                                .font(.title2)
                        }
                                        }
                                        .padding()
                                        .frame(width: 270,height: 70)
                                        .background(.liverChestnut)
                                        .cornerRadius(15)
                                        .foregroundColor(.paleSilver)
                
                    NavigationLink (destination: AssistenteDuvidasView()){
                        HStack{
                            Image(systemName: "bubble.left.and.text.bubble.right.rtl")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            Text("Dúvidas")
                                .font(.title2)
                        }
                                        }
                                        .padding()
                                        .frame(width: 270,height: 70)
                                        .background(.liverChestnut)
                                        .cornerRadius(15)
                                        .foregroundColor(.paleSilver)
                        
                    
                }
            
            
            
            
            }
        }
    }
}

#Preview {
    HomeView()
}
