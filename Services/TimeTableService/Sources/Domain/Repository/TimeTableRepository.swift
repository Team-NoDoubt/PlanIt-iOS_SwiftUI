import Foundation
import RxSwift

public protocol TimeTableRepository {
    func fetchTimeTableListForWeek(grade: Int, classNum: Int) -> Observable<[TimeTableEntity]>
}
