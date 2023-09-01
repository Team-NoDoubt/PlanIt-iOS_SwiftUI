import Foundation
import RxSwift
import BaseModule

protocol ReomteTimeTableDataSource: BaseRemoteDataSource<TimeTableAPI> {
    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> Single<[TimeTableEntity]>
}
