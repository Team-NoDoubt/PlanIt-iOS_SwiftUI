import Foundation

public struct AuthServiceDependency {

    public static let shared = Self.resolve()

    public let checkIsTokenValidUseCase: CheckIsTokenValidUseCase
    public let refreshTokenUseCase: RefreshTokenUseCase
    public let signinUseCase: SigninUseCase
    public let jwtPlugin: JWTPlugin
}

extension AuthServiceDependency {
    static func resolve() -> AuthServiceDependency {
        let remoteAuthDataSource: RemoteAuthDataSource = RemoteAuthDataSourceImpl()
        let localTokenDataSource: LocalTokenDataSource = LocalTokenDataSourceImpl()

        let authRepository: AuthRepository = AuthRepositoryImpl(
            remoteAuthDataSource: remoteAuthDataSource,
            localTokenDataSource: localTokenDataSource
        )
        let checkIsTokenValidUseCase = CheckIsTokenValidUseCase(
            authRepository: authRepository
        )
        let refreshTokenUseCase = RefreshTokenUseCase(
            authRepository: authRepository
        )
        let signinUseCase = SigninUseCase(
            authRepository: authRepository
        )

        let jwtPlugin = JWTPlugin(
            localTokenDataSource: localTokenDataSource
        )

        return AuthServiceDependency(
            checkIsTokenValidUseCase: checkIsTokenValidUseCase,
            refreshTokenUseCase: refreshTokenUseCase,
            signinUseCase: signinUseCase,
            jwtPlugin: jwtPlugin)
    }
}
