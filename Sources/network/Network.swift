//
//  Network.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import Foundation
import Alamofire

public class Network {
    
    public static func get<T: Decodable>(_ url: String) async throws -> T {
        try await AF.request(url)
            .serializingDecodable(T.self)
            .response
            .result
            .get()
    }
    
}
