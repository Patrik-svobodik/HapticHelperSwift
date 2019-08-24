#if !os(macOS)
import Foundation
import UIKit
enum HapticType {
    case extraLight
    case light
    case medium
    case heavy
    case rigid
    case success
    case warning
    case error
}
@available(iOS 10.0, *)
class Haptic {
    let lightImpactFeedbackgenerator = UIImpactFeedbackGenerator(style: .light)
    let mediumImpactFeedbackgenerator = UIImpactFeedbackGenerator(style: .medium)
    let strongImpactFeedbackgenerator = UIImpactFeedbackGenerator(style: .heavy)
    let rigidImpactFeedbackgenerator = UIImpactFeedbackGenerator(style: .rigid)
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
    let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
    var prepared = false
    func prepare(_ type: HapticType? = nil) {
        if type != nil {
            switch type! {
            case .extraLight:
                self.selectionFeedbackGenerator.prepare()
            case .light:
                self.lightImpactFeedbackgenerator.prepare()
            case .medium:
                self.mediumImpactFeedbackgenerator.prepare()
            case .heavy:
                self.strongImpactFeedbackgenerator.prepare()
            case .rigid:
                self.rigidImpactFeedbackgenerator.prepare()
            case .success:
                self.notificationFeedbackGenerator.prepare()
            case .warning:
                self.notificationFeedbackGenerator.prepare()
            case .error:
                self.notificationFeedbackGenerator.prepare()
            }
        } else {
            self.selectionFeedbackGenerator.prepare()
            self.lightImpactFeedbackgenerator.prepare()
            self.mediumImpactFeedbackgenerator.prepare()
            self.strongImpactFeedbackgenerator.prepare()
            self.rigidImpactFeedbackgenerator.prepare()
            self.notificationFeedbackGenerator.prepare()
        }
    }
    func give(_ type: HapticType = .light) {
        switch type {
        case .extraLight:
            self.selectionFeedbackGenerator.selectionChanged()
        case .light:
            self.lightImpactFeedbackgenerator.impactOccurred()
        case .medium:
            self.mediumImpactFeedbackgenerator.impactOccurred()
        case .heavy:
            self.strongImpactFeedbackgenerator.impactOccurred()
        case .rigid:
            self.rigidImpactFeedbackgenerator.impactOccurred()
        case .success:
            self.notificationFeedbackGenerator.notificationOccurred(.success)
        case .warning:
            self.notificationFeedbackGenerator.notificationOccurred(.warning)
        case .error:
            self.notificationFeedbackGenerator.notificationOccurred(.error)
        }
        print("gave haptics")
    }
    init() {
        self.prepare()
    }
}
#endif
