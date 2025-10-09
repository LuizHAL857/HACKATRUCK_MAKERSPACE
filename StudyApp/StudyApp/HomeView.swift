
import SwiftUI


struct HomeView: View {
    @State var Nome: String = ""
    
    @ObservedObject var manager = StreakManager(key: "DayStreak")
//    @State var Nome: String = ""
    
    var body: some View {
            TabView{
                
                menuView(manager: manager, Nome: $Nome)
                    .tabItem{
                        Label("Menu", systemImage: "line.3.horizontal")
                            .foregroundStyle(.green)
                    }
//                    .toolbarBackground(.hidden, for: .tabBar)
                
                PetsView()
                    .tabItem{
                        Label("Pets", systemImage: "pawprint")
                            .foregroundStyle(.green)
                    }
                    .toolbarBackground(.hidden, for: .tabBar)
                
                perfilView(manager: manager, Nome: $Nome)
                    .tabItem{
                        Label("Perfil", systemImage: "person")
                            .foregroundStyle(.green)
                    }
                    .toolbarBackground(.hidden, for: .tabBar)
                
               
            }
        }
    }


#Preview {
    HomeView()
}
