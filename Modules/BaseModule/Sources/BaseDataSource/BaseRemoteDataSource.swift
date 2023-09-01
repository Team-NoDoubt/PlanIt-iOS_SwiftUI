import Foundation
import Moya
import RxMoya

open class BaseRemoteDataSource<API: PlanItAPI> {

    private let jwtPlugin: JWTPlugin

    
    private lazy var provider = MoyaProvider<API>(plugins: self.JWTPlugin)
    
    public func request(_ api: API) -> Single<Response> {
        
    }
}
