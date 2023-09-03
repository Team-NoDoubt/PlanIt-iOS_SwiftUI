import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "AuthService",
    dependencies: [
        .SPM.RxSwift,
        .SPM.Moya,
        .SPM.RxMoya,
        .SPM.KeychainSwift,
        .Module.DateModule
    ])
