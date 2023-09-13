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
    var timetableError: TimeTableError? {
        self as? TimeTableError
    }
}
