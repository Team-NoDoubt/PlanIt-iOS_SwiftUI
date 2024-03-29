import Foundation

struct TimeTableResponse: Decodable {
    let grade: Int
    let classNum: Int
    let peroid: Int
    let weekOfDate: Int
    let subject: String

    enum CodingKeys: String, CodingKey {
        case grade
        case classNum = "class_num"
        case peroid
        case weekOfDate = "week_of_date"
        case subject
    }

}

extension TimeTableResponse {
    func toDomain() -> TimeTableEntity {
        return .init(
            grade: self.grade,
            classNum: self.classNum,
            peroid: self.peroid,
            weekOfDate: self.weekOfDate,
            subject: self.subject
        )
    }
}
