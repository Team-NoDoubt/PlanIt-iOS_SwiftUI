import Foundation

public struct TimeTableServiceDependency {

    public static let shared = Self.shared()

    public let fetchTimeTableUseCase: FetchTimeTableUseCase
}

extension TimeTableServiceDependency {

    static func shared() -> TimeTableServiceDependency {

        let remoteTimeTableDataSource = RemoteTimeTableDataSourceImpl()
        let repository: TimeTableRepository =  TimeTableRepositoryImpl(
            remoteDataSource: remoteTimeTableDataSource
        )

        let fetchTimeTableUseCase = FetchTimeTableUseCase(
            repository: repository
        )

        return .init(fetchTimeTableUseCase: fetchTimeTableUseCase)
    }
}
