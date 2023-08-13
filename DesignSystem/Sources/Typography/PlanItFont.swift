import SwiftUI

public enum FontType {

    case medium10
    case medium12
    case medium14
    case medium16
    case medium18
    case medium20

    case regular8
    case regular10
    case regular12
    case regular14
    case regular16

    case semiBold12
    case semiBold14
    case semiBold16
    case semiBold18
    case semiBold20

    case bold16
    case bold20
}

extension FontType {

    var fontSize: CGFloat {
        switch self {
        case .regular8: return 8
        case .medium10, .regular10: return 10
        case .medium12, .regular12, .semiBold12: return 12
        case .medium14, .regular14, .semiBold14: return 14
        case .medium16, .regular16, .semiBold16, .bold16: return 16
        case .medium18, .semiBold18: return 18
        case .medium20, .semiBold20, .bold20: return 20

        }
    }

    var fontWeight: UIFont.Weight {
        switch self {
        case .medium10, .medium12, .medium14, .medium16, .medium18, .medium20: return .medium
        case .regular8, .regular10, .regular12, .regular14, .regular16: return .regular
        case .semiBold12, .semiBold14, .semiBold16, .semiBold18, .semiBold20: return .semibold
        case .bold16, .bold20: return .bold
        }
    }

    var fontHeight: CGFloat {
        switch self {
        case .medium10: return 18
        case .medium12: return 20
        case .medium14: return 22
        case .medium16, .semiBold16: return 24
        case .medium18: return 26
        case .medium20: return 28

        case .regular8: return 12
        case .regular10: return 14
        case .regular12: return 16
        case .regular14: return 18
        case .regular16: return 20

        case .semiBold12: return 20
        case .semiBold14: return 22
        case .semiBold18: return 26
        case .semiBold20: return 28

        case .bold16: return 20
        case .bold20: return 24
        }
    }

    var defaultColor: Color {
        return Color.GrayScale.gray900
    }
}
