import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "APIModule",
    platform: .iOS,
    dependencies: [
        .SPM.Moya
    ]
)
