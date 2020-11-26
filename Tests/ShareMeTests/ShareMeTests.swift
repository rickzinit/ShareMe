import XCTest
@testable import ShareMe

final class ShareMeTests: XCTestCase {
    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(ShareMe().text, "Hello, World!")
//    }
    
    func testColorRedEqual() {
        let color = ShareMe.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
//        ("testExample", testExample),
        ("testColorRedEqual", testColorRedEqual)
    ]
}
