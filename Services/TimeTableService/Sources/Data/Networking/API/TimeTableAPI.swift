import Moya
import Foundation
import BaseModule

enum TimeTableAPI {
    case fetchTimeTable(grade: Int, classNum: Int)
}

extension TimeTableAPI: PlanItAPI {
    
    var domain: String {
        return "/timetable"
    }
    
    var urlPath: String {
        switch self {
        case .fetchTimeTable:
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
        case .fetchTimeTable(let grade, let classNum):
            return .requestParameters(parameters:
                                        [
                                            "grade": grade,
                                            "class": classNum
                                        ], encoding: URLEncoding.queryString)
        }
    }
}
