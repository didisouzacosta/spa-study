//
//  NetworkTests.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import XCTest
import spm_core

@testable import spm_network

final class NetworkTests: XCTestCase {
    
    func testEnsureDecodableResponseData() async throws {
        let pokemon: Pokemon = try await Network.get("https://pokeapi.co/api/v2/pokemon/ditto")
        XCTAssertEqual(pokemon.name, "ditto")
    }
    
}
