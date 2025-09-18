//
//  Amiibo.swift
//  Desafio06
//
//  Created by Turma02-19 on 17/09/25.
//

import SwiftUI

struct AmiiboResponse: Decodable {
    let amiibo: [Amiibo]
}

struct ReleaseDates: Decodable {
    let na: String?
    let eu: String?
    let jp: String?
    let au: String?
}

struct Amiibo: Identifiable, Decodable {
    var id: String { head + tail }
    let name: String
    let image: String
    let head: String
    let tail: String
    let amiiboSeries: String
    let gameSeries: String
    let type: String
    let release: ReleaseDates
}
