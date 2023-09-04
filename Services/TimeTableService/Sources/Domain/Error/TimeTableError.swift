import Foundation

public enum TimeTableError: Error {
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case conflict
    case tooManyRequests
    case internalServerError
}

public extension Error {
    var TimeTableError: TimeTableError? {
        self as? TimeTableError
    }
}
