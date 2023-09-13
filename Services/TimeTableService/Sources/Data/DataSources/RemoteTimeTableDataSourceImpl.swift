import Foundation

import BaseModule
import RxSwift

class RemoteTimeTableDataSourceImpl: BaseRemoteDataSource<TimeTableAPI>, RemoteTimeTableDataSource {

    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> Single<[TimeTableEntity]> {
        return request(.fetchTimeTableListForWeek(grade: grade, classNum: classNum))
            .map(TimeTableListResponse.self)
            .map{ $0.toDomain() }

    }
}
