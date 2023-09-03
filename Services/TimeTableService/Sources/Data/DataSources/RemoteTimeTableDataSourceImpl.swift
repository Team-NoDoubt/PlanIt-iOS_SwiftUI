import Foundation

import BaseModule
import RxSwift
import Moya

class RemoteTimeTableDataSourceImpl: BaseRemoteDataSource<TimeTableAPI>, ReomteTimeTableDataSource {

    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> RxSwift.Single<[TimeTableEntity]> {
        return request(.fetchTimeTableListForWeek(grade: grade, classNum: classNum))
    }
}
