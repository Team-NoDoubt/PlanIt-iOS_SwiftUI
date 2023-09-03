import Moya
import Foundation

enum AuthAPI: TargetType {
    case signin(request: SigninRequest)
    case refreshToken(refreshToken: String)
}

extension AuthAPI {
    var baseURL: URL {
        return URL(string: "http://3.36.166.250:8080")!
    }

    var path: String {
        switch self {
        case .signin:
            return "/user/auth"
        case .refreshToken:
            return "user/token"
        }
    }

    var method: Moya.Method {
        switch self {
        case .signin:
            return .post
        case .refreshToken:
            return .put
        }
    }

    var task: Task {
        switch self {
        case .signin(let request):
            return .requestJSONEncodable(request)
        default:
            return .requestPlain
        }
    }

    var validationType: ValidationType {
        return .successCodes
    }

    var headers: [String : String]? {
        switch self {
        case .refreshToken(let refreshToken):
                   return ["Refresh-Token": "Bearer \(refreshToken)", "Contect-Type": "application/json"]
        default:
            return nil
        }
    }
}
