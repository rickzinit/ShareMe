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
        let color = Share.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
//    Unit Test
    func testColorsAreEqual() {
        let color = Share.Color.fromHexString("006736")
        XCTAssertEqual(color, Share.Color.shareColor)
    }
    
    func testSecondaryColorsAreEqual() {
        let color = Share.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, Share.Color.secondaryColor)
    }

    static var allTests = [
//        ("testExample", testExample),
        ("testColorRedEqual", testColorRedEqual),
        ("testColorsAreEqual", testColorsAreEqual),
        ("testSecondaryColorsAreEqual", testSecondaryColorsAreEqual)
    ]
}
