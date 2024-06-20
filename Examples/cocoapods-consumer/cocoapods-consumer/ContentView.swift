//
//  ContentView.swift
//  cocoapods-consumer
//
//  Created by ProDoctor on 19/06/24.
//

import SwiftUI
import spm_study

@Observable
final class PokemonStore {
    
    private (set) var pokemon: Pokemon?
    
    func fetch() async throws {
        pokemon = try await Network.get("https://pokeapi.co/api/v2/pokemon/ditto")
    }
    
}

struct ContentView: View {
    private let logger = Logger()
    private let sum = Calculate.sum(1, 2)
    private let store = PokemonStore()
    
    var body: some View {
        VStack(spacing: 8) {
            Text("The sum of 1 and 2 is **\(sum)**")
            
            if let pokemon = store.pokemon {
                Text("The pokemon name is **\(pokemon.name)**")
            } else {
                ProgressView()
            }
        }
        .padding()
        .task {
            try? await store.fetch()
        }
        .onAppear {
            logger.log("onApper of ContentView")
        }
    }
}

#Preview {
    ContentView()
}
