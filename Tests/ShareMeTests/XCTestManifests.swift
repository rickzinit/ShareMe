import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ShareColorTests.allTests),
        testCase(ShareNetworkingTests, allTests)
    ]
}
#endif
