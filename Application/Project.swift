import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "PlanIt-iOS",
    organizationName: "com.noubt",

    targets: [
        Target(
            name: "PlanIt-iOS",
            platform: .iOS,
            product: .app,
            bundleId: "com.nodoubt.PlanIt-iOS",
            deploymentTarget: .iOS(
                targetVersion: "15.0",
                devices: .iphone
            ),
            infoPlist: .file(path: Path("SupportingFiles/Info.plist")),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            scripts: [.swiftLintScript],
            dependencies: [
                .Module.EmptyModule,
                .DesignSystem.PlanItDesignSystem
            ])
    ]
)
