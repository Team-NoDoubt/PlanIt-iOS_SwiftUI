import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "EmptyModule",
    dependencies: [
        .SPM.RxSwift,
        .SPM.KeychainSwift
    ]
)
