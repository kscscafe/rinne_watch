import SwiftUI
import UIKit

enum AppFont {
    private static let candidates = [
        "SourceHanSerif-ExtraLight",
        "SourceHanSerifJP-ExtraLight"
    ]

    static func serifThin(size: CGFloat) -> Font {
        for name in candidates {
            if UIFont(name: name, size: size) != nil {
                return .custom(name, size: size)
            }
        }
        return .system(size: size, weight: .thin, design: .serif)
    }
}
