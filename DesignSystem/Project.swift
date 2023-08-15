import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "PlanItDS",
    platform: .iOS,
    dependencies: [
        .Module.EmptyModule
    ],
    scripts: [.removeStaticFrameworksScripts]
)
