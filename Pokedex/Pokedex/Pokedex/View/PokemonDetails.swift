//
//  PokemonDetails.swift
//  Pokedex
//
//  Created by Nathan Demssie on 8/31/23.
//

import SwiftUI
import Kingfisher

struct PokemonDetails: View {
    let pokemon: Pokemon
    
    let viewModel: PokemonViewModel
        
        var backgroundColor: Color {
            Color(viewModel.background(forType: pokemon.type))
        }
    
    var body: some View {
        VStack {
        KFImage(URL(string: pokemon.imageUrl))
            .resizable()
            .scaledToFit()
            .padding(16)
        
        Text(pokemon.name.capitalized)
            .font(.title)
            .foregroundColor(.black)
            .padding(.bottom, 8)
        
        Text("Type: \(pokemon.type)")
            .font(.headline)
            .foregroundColor(.black)
        Text("Description: \(pokemon.description)")
                        .font(.body)
                        .padding(.vertical, 8)
                    
                    Text("Weight: \(pokemon.weight)")
                        .font(.body)
                        .padding(.bottom, 4)
                    
                    HStack {
                        Text("Attack: \(pokemon.attack)")
                        Text("Defense: \(pokemon.defense)")
                    }
                    .font(.body)
                    .foregroundColor(.black)
                }
        .background(backgroundColor)
        .navigationBarTitle(pokemon.name.capitalized, displayMode: .inline)
    }
}

