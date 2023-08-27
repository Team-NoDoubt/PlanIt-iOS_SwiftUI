import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "PlanItDS",
    platform: .iOS,
    dependencies: [
    ],
    scripts: [.removeStaticFrameworksScripts]
)
