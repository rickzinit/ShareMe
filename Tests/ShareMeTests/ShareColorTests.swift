import XCTest
@testable import ShareMe

final class ShareColorTests: XCTestCase {
    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(ShareMe().text, "Hello, World!")
//    }
    
    func testColorRedEqual() {
        let color = ShareMe.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
//    Unit Test
    func testColorsAreEqual() {
        let color = ShareMe.Color.fromHexString("006736")
        XCTAssertEqual(color, ShareMe.Color.shareColor)
    }
    
    func testSecondaryColorsAreEqual() {
        let color = ShareMe.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, ShareMe.Color.secondaryColor)
    }

    static var allTests = [
//        ("testExample", testExample),
        ("testColorRedEqual", testColorRedEqual),
        ("testColorsAreEqual", testColorsAreEqual),
        ("testSecondaryColorsAreEqual", testSecondaryColorsAreEqual)
    ]
}
