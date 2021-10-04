import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftSDAIap242Tests.allTests),
    ]
}
#endif
