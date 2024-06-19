import XCTest
@testable import SPM_Study

final class CalculateTests: XCTestCase {
    
    func testSumFloat() {
        let result = Calculate.sum(1.2, 1, 5.6)
        XCTAssertEqual(result, 7.8, "Sum of float values is incorrect")
    }
    
    func testSumInt() {
        let result = Calculate.sum(1, 2, 3, 4)
        XCTAssertEqual(result, 10, "Sum of int values is incorrect")
    }
    
    func testSubtractFloat() {
        let result = Calculate.subtract(10.0, 3.0, 2.0)
        XCTAssertEqual(result, 5.0, "Subtraction of float values is incorrect")
    }
    
    func testSubtractInt() {
        let result = Calculate.subtract(10, 3, 2)
        XCTAssertEqual(result, 5, "Subtraction of int values is incorrect")
    }
    
    func testMultiplyFloat() {
        let result = Calculate.multiply(2.0, 3.0, 4.0)
        XCTAssertEqual(result, 24.0, "Multiplication of float values is incorrect")
    }
    
    func testMultiplyInt() {
        let result = Calculate.multiply(2, 3, 4)
        XCTAssertEqual(result, 24, "Multiplication of int values is incorrect")
    }
    
}
