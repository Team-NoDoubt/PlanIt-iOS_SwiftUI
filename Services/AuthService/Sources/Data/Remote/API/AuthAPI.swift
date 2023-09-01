import Moya
import Foundation

enum AuthAPI: TargetType {
    case signin(request: SigninRequest)
}

extension AuthAPI {
    var baseURL: URL {
        return URL(string: "http://3.36.166.250:8080")!
    }

    var path: String {
        switch self {
        case .signin:
            return "/user/auth"
        }
    }

    var method: Moya.Method {
        switch self {
        case .signin:
            return .post
        }
    }

    var task: Task {
        switch self {
        case .signin(let request):
            return .requestJSONEncodable(request)
        }
    }

    var validationType: ValidationType {
        return .successCodes
    }

    var headers: [String : String]? {
        switch self {
            
        default:
            return nil
        }
    }
}
