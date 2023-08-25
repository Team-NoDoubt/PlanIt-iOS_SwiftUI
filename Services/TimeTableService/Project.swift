import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "TimeTableService",
    dependencies: [
        .SPM.RxSwift,
        .SPM.RxMoya,
        .SPM.Moya
    ]
)
