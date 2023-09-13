import Foundation
import RxSwift
import BaseModule

protocol RemoteTimeTableDataSource: BaseRemoteDataSource<TimeTableAPI> {
    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> Single<[TimeTableEntity]>
}
