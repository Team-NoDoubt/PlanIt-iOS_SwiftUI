import Foundation
import RxSwift

public class SigninUseCase {

    private let authRepository: AuthRepository

    init(authRepository: AuthRepository) {
        self.authRepository = authRepository
    }

    public func excute(signinEntity: SigninEntity) -> Completable {
        self.authRepository.signin(signinEntity: signinEntity)
    }

}
