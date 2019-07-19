# SafePreviewDevices

An enumeration of Preview Devices that can be used with SwiftUI previews

## Modify with

```swift
SomeView().previewDevice(safeDevice: .iPadPro12_9Inch2ndGeneration)
```    

- [X] Safely Typed Enumeration of currently supported Devices
- [X] Extension on PreviewDevice to be initialized with the enumeration
- [X] A ViewModifier that can be used to set the environment
- [X] Extension on View that closely matches the modifier previewDevice
