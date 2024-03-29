import Foundation
import Moya
import RxMoya
import RxSwift

class RemoteAuthDataSourceImpl: RemoteAuthDataSource {
    

    private let provider = MoyaProvider<AuthAPI>()

    func signin(signinRequest: SigninRequest) -> Single<SigninTokenResponse> {
        self.provider.rx.request(.signin(request: signinRequest))
            .map(SigninTokenResponse.self)
    }
    
    func refreshToken(refreshToken: String) -> Single<SigninTokenResponse> {
        self.provider.rx.request(.refreshToken(refreshToken: refreshToken))
            .map(SigninTokenResponse.self)
    }
    
}
