import Foundation
import RxSwift

public class FetchTimeTableUseCase {
    private let repository: TimeTableRepository

    init(repository: TimeTableRepository) {
        self.repository = repository
    }

    public func excute(grade: Int, classNum: Int) -> Observable<[TimeTableEntity]> {
        return repository.fetchTimeTableListForWeek(grade: grade, classNum: classNum)
        
    }
}
