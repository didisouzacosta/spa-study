//
//  UserTests.swift
//
//
//  Created by ProDoctor on 20/06/24.
//

import XCTest
@testable import spm_core

final class UserTests: XCTestCase {
    
    func testAssertUserValues() {
        let user = User(name: "Adriano Souza Costa")
        XCTAssertEqual(user.name, "Adriano Souza Costa")
    }
    
}
