//
//  NetworkTests.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import XCTest
@testable import spm_network

final class NetworkTests: XCTestCase {
    
    func testEnsureBaseURL() {
        let url = Network.baseURL.absoluteString
        XCTAssertEqual(url, "https://www.google.com.br")
    }
    
}
