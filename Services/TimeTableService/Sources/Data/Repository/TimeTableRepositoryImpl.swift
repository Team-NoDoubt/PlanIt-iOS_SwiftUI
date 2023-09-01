import Foundation
import RxSwift
import Moya

class TimeTableRepositoryImpl: TimeTableRepository {
    
    let remoteDataSource: ReomteTimeTableDataSource

    init(remoteDataSource: ReomteTimeTableDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    
    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> Observable<[TimeTableEntity]> {
        return remoteDataSource.fetchTimeTableListForWeek(grade: grade, classNum: classNum)
            .asObservable()
    }
}
