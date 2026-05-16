import Foundation

enum BackgroundStyle: String, CaseIterable, Identifiable {
    case none
    case nebula
    case candle
    case bamboo

    var id: String { rawValue }

    var label: String {
        switch self {
        case .none:   return "なし"
        case .nebula: return "星雲"
        case .candle: return "ろうそく"
        case .bamboo: return "竹林"
        }
    }

    /// nil なら無地背景。それ以外はアセット名
    var imageName: String? {
        switch self {
        case .none:   return nil
        case .nebula: return "BackgroundNebula"
        case .candle: return "BackgroundCandle"
        case .bamboo: return "BackgroundBamboo"
        }
    }
}
