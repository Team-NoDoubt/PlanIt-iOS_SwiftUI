import Foundation

public struct TimeTableServiceDependency {

    public static let shared = Self.resolve()

    public let fetchTimeTableListUseCase: FetchTimeTableUseCase
}

extension TimeTableServiceDependency {

    static func resolve() -> TimeTableServiceDependency {

        let remoteTimeTableDataSource = RemoteTimeTableDataSourceImpl()
        let repository: TimeTableRepository =  TimeTableRepositoryImpl(
            remoteDataSource: remoteTimeTableDataSource
        )

        // MARK: - UseCases
        let fetchTimeTableListUseCase = FetchTimeTableUseCase(
            repository: repository
        )

        return .init(
            fetchTimeTableListUseCase: fetchTimeTableListUseCase
        )
    }
}
