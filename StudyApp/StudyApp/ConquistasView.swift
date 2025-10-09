import SwiftUI

struct ConquistasView: View {
    @StateObject private var viewModel = ConquistaViewModel()
    
    
    var body: some View {
        
        
        ScrollView{
            ForEach(viewModel.conquistas, id: \.self){i in
                
                
            }
            
            
            
        }.onAppear {
            viewModel.fetchConquistas()
        }
    }

    
    
}
#Preview {
ConquistasView()
}
