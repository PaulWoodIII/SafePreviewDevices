import Foundation
import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public enum SafePreviewDevice: String, CaseIterable {
    case mac = "Mac"
    case iPhone7 = "iPhone 7"
    case iPhone7Plus = "iPhone 7 Plus"
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneSE = "iPhone SE"
    case iPhoneX = "iPhone X"
    case iPhoneXs = "iPhone Xs"
    case iPhoneXsMax = "iPhone Xs Max"
    case iPhoneXR = "iPhone XR"
    case iPadMini4 = "iPad mini 4"
    case iPadAir2 = "iPad Air 2"
    case iPadPro9_7Inch = "iPad Pro (9.7-inch)"
    case iPadPro12_9Inch = "iPad Pro (12.9-inch)"
    case iPad5thGeneration = "iPad (5th generation)"
    case iPadPro12_9Inch2ndGeneration = "iPad Pro (12.9-inch) (2nd generation)"
    case iPadPro10_5Inch = "iPad Pro (10.5-inch)"
    case iPad6ThGeneration = "iPad (6th generation)"
    case iPadPro11Inch = "iPad Pro (11-inch)"
    case iPadPro12_9Inch3rdGeneration = "iPad Pro (12.9-inch) (3rd generation)"
    case iPadMini5ThGeneration = "iPad mini (5th generation)"
    case iPadAir3rdGeneration = "iPad Air (3rd generation)"
    case appleTV = "Apple TV"
    case appleTV4K = "Apple TV 4K"
    case appleTV4KAt1080p = "Apple TV 4K (at 1080p)"
    case appleWatchSeries238mm = "Apple Watch Series 2 - 38mm"
    case appleWatchSeries242mm = "Apple Watch Series 2 - 42mm"
    case appleWatchSeries338mm = "Apple Watch Series 3 - 38mm"
    case appleWatchSeries342mm = "Apple Watch Series 3 - 42mm"
    case appleWatchSeries440mm = "Apple Watch Series 4 - 40mm"
    case appleWatchSeries444mm = "Apple Watch Series 4 - 44mm"
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension PreviewDevice {
  init(safeDevice: SafePreviewDevice) {
    self.init(rawValue: safeDevice.rawValue)
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct SafePreviewDeviceModifier: ViewModifier {
  public var safeDevice: SafePreviewDevice
  public func body(content: Content) -> some View {
    content.previewDevice(PreviewDevice.init(safeDevice: safeDevice))
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {
  func previewDevice(type safeDevice: SafePreviewDevice) -> some View {
    return self.modifier(SafePreviewDeviceModifier(safeDevice: safeDevice))
  }
}
