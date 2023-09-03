import Foundation
import RxSwift

protocol RemoteAuthDataSource {
    func signin(signinRequest: SigninRequest) -> Single<SigninTokenResponse>
    func refreshToken(refreshToken: String) -> Single<SigninTokenResponse>
    
}
