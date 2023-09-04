import Moya
import Foundation
import AuthService

public protocol PlanItAPI: TargetType, JWTTokenAuthorizable {
    var domain: String { get }
    var urlPath: String { get }
    var errorMap: [Int: Error] { get }
}

public extension PlanItAPI {
    var baseURL: URL {
        return URL(string: "http://3.36.159.7:8080")!
    }

    var path: String {
        return domain+urlPath
    }

    var task: Task {
        .requestPlain
    }

    var validationType: ValidationType {
        return .successCodes
    }

    var headers: [String: String]? {
        switch self {
        default:
            return ["Content-Type": "application/json"]
        }
    }

}
