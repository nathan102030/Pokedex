//
//  Pokemon.swift
//  Pokedex
//
//  Created by Nathan Demssie on 8/30/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let weight: Int
    let attack: Int
    let defense: Int
}


