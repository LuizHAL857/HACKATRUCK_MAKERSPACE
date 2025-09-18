//
//  Desafio06App.swift
//  Desafio06
//
//  Created by Turma02-19 on 17/09/25.
//

import SwiftUI

@main
struct Desafio06App: App {
    
    struct Amiibo {
        
        var amiiboSeries:String
        var character:String
        var gameSeries:String
        var head:String
        var image:String
        var name:String
        var release:String?
        var tail:String
        var type:String
    
    }
    
    var body: some Scene {
        WindowGroup {
            AmiiboListView()
        }
    }
}
