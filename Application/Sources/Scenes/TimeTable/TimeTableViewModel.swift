import Foundation
import TimeTableService
import RxSwift

class TimeTableViewModel: ObservableObject {
//    let dayOfWeek = ["월", "화", "수", "목", "금"]
    let peroid = ["1", "2", "3", "4", "5", "6", "7"]
    @Published var timetable: [TimeTableEntity] = []
    private let fetchTimeTableUsecase: FetchTimeTableUseCase

    private var disposeBag = DisposeBag()

    init(fetchTimeTableUsecase: FetchTimeTableUseCase) {
        self.fetchTimeTableUsecase = fetchTimeTableUsecase
    }

    func getTimeTable() {
        self.fetchTimeTableUsecase.excute(grade: 2, classNum: 2)
            .subscribe(onNext: {
                print("1223")
                self.timetable = $0
                print($0)
            })
            .disposed(by: disposeBag)
    }
}
