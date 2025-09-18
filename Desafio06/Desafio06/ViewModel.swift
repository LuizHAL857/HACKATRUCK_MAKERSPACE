//
//  ViewModel.swift
//  Desafio06
//
//  Created by Turma02-19 on 17/09/25.
//

import SwiftUI
import Foundation


class AmiiboViewModel: ObservableObject {
    @Published var amiibos: [Amiibo] = []

    func fetchAmiibos() {
        guard let url = URL(string: "https://amiiboapi.com/api/amiibo/") else {
            print("URL inválida")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Erro: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("Nenhum dado recebido")
                return
            }

            do {
                let decoded = try JSONDecoder().decode(AmiiboResponse.self, from: data)
                DispatchQueue.main.async {
                    self.amiibos = decoded.amiibo
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }.resume()
    }
}
