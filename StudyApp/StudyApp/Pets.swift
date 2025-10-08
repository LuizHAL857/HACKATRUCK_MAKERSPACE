
import SwiftUI



struct Pet: Hashable, Decodable {
    
    
    let nome: String
    let imagemNome: String
    let custo: Double
    var isComprado: Bool = false
    
}


var todosOsPetsIniciais: [Pet] = [
    Pet(nome: "Ramsés", imagemNome: "farao", custo: 50),
    Pet(nome: "croco", imagemNome: "crocs", custo: 40),
    Pet(nome: "bozo", imagemNome: "palhaco", custo: 30),
    Pet(nome: "winx", imagemNome: "borboleta", custo: 20),
    Pet(nome: "harry", imagemNome: "bruxo", custo: 60),
    Pet(nome: "houston", imagemNome: "astronauta", custo:50)
]
