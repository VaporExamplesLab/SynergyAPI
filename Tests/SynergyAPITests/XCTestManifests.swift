import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SynergyAPITests.allTests),
    ]
}
#endif