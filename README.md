# HapticHelperSwift

A simple library for giving the user Haptic feedback written in Swift 5.0

## Usage
To give a haptic feedback, you need to initialize the `Haptic` class and call `.give()` on it.
Available haptic types: 
* .extraLight (`UISelectionFeedbackGenerator()`)
* .light (`UIImpactFeedbackGenerator(style: .light)`)
* .medium (`UIImpactFeedbackGenerator(style: .medium)`)
* .heavy (`UIImpactFeedbackGenerator(style: .heavy)`)
* .rigid (`UIImpactFeedbackGenerator(style: .rigid)`)
* .success (`UINotificationFeedbackGenerator()notificationOccurred(.success)`)
* .warning (`UINotificationFeedbackGenerator()notificationOccurred(.warning)`)
* .error (`UINotificationFeedbackGenerator()notificationOccurred(.error)`)
