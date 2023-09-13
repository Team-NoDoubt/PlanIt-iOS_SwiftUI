import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "BaseModule",
    platform: .iOS,
    dependencies: [
//        .SPM.Moya,
        .Service.AuthService
    ]
)
