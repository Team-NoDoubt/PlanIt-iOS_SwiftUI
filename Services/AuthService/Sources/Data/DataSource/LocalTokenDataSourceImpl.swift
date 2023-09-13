import Foundation
import DateModule


class LocalTokenDataSourceImpl: LocalTokenDataSource {

    let keychain = KeychainImpl<KeychainTokenType>()

    init() {
        keychain.accessGroup = "5G56CAU886.com.nodoubt.PlanIt-iOS.keychainGroup"
    }

    func registerAccessToken(_ accessToken: String) {
        self.keychain.set(accessToken, forKey: .accessToken)
    }

    func fetchAccessToken() -> String? {
        self.keychain.get(.accessToken)
    }

    func registerRefreshToken(_ refreshToken: String) {
        self.keychain.set(refreshToken, forKey: .refreshToken)
    }

    func fetchRefreshToken() -> String? {
        self.keychain.get(.refreshToken)
    }

    func registerExpiredAt(_ expiredAt: String) {
        self.keychain.set(expiredAt, forKey: .expiredAt)
    }
    
    func fetchExpiredDate() -> Date? {
        self.keychain.get(.expiredAt)?
            .toDate(format: .fullDateWithMilliSecondTime)
    }


    func resetToken() {
        self.keychain.delete(.accessToken)
        self.keychain.delete(.refreshToken)
        self.keychain.delete(.expiredAt)
    }

}


