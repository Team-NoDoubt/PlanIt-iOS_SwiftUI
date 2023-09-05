import Moya
import Foundation
import BaseModule
import AuthService

enum TimeTableAPI {
    case fetchTimeTableListForWeek(grade: Int, classNum: Int)
}

extension TimeTableAPI: PlanItAPI {
    
    var domain: String {
        return "/timetable"
    }
    
    var urlPath: String {
        switch self {
        case .fetchTimeTableListForWeek:
            return ""
        }
    }

    var method: Moya.Method {
        return .get
    }

    var errorMap: [Int : Error] {
        [:]
    }

    var task: Task {
        switch self {
        case .fetchTimeTableListForWeek(let grade, let classNum):
            return .requestParameters(parameters:
                                        [
                                            "grade": grade,
                                            "class": classNum
                                        ], encoding: URLEncoding.queryString)
        }
    }

    var jwtTokenType: JWTTokenType {
        return .none
    }

}
