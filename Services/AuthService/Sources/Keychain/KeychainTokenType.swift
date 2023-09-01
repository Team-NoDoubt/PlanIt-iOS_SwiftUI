import Foundation

enum KeychainTokenType: KeychainKeyType {
    case accessToken
    case refreshToken
    case expiredAt
}

extension KeychainTokenType {
    var keyString: String {
        switch self {
        case .accessToken:
            return "ACCESS-TOKEN"
        case .refreshToken:
            return "REFRESH-TOKEN"
        case .expiredAt:
            return "EXPIRED-AT"
        }
    }
}
