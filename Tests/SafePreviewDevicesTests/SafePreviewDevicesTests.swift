import XCTest
import SwiftUI
@testable import SafePreviewDevices

final class SafePreviewDevicesTests: XCTestCase {
  
  @available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
  struct SomeView: View {
    var body: some View {
      Text("I'm just a view")
    }
  }
  
  func testRawModifier() {
    if #available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *) {
      for device in SafePreviewDevice.allCases {
        let v = SomeView()
          .previewDevice(PreviewDevice.init(rawValue: device.rawValue))
        XCTAssertNotNil(v)
      }
    } else {
      XCTFail("iOS 13 is required for SFSafeSymbols.")
    }
  }
  
  func testInitializer() {
    if #available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *) {
      for device in SafePreviewDevice.allCases {
        let v = SomeView()
          .previewDevice(PreviewDevice.init(safeDevice: device))
        XCTAssertNotNil(v)
      }
    } else {
      XCTFail("iOS 13 is required for SFSafeSymbols.")
    }
  }
  
  func testCustomModifier() {
    if #available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *) {
      for device in SafePreviewDevice.allCases {
        let v = SomeView()
          .previewDevice(type: device)
        XCTAssertNotNil(v)
      }
    } else {
      XCTFail("iOS 13 is required for SFSafeSymbols.")
    }
  }
  
  static var allTests = [
    ("testRawModifier", testRawModifier),
    ("testInitializer", testInitializer),
    ("testCustomModifier", testCustomModifier),
  ]
}
