//
//  PokemonTests.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import XCTest

@testable import spm_core

final class UserTests: XCTestCase {
    
    func testAssertPokemonProperties() {
        let pokemon = Pokemon(name: "Pikachu")
        XCTAssertEqual(pokemon.name, "Pikachu")
    }
    
}
