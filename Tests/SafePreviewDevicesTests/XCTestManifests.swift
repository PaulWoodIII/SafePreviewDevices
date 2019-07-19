import XCTest

#if !canImport(SwiftUI)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SafePreviewDevicesTests.allTests),
    ]
}
#endif
