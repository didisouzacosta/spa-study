//
//  Pokemon.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import Foundation

public struct Pokemon: Decodable {
    
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
}
