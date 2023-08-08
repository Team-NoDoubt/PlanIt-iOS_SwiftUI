import ProjectDescription

let workspace = Workspace(
    name: "PlanIt_Workspace",
    projects: [
        "Application",
        "Modules/**",
        "Services/**",
        "DesignSystem"
    ],
    fileHeaderTemplate: nil,
    additionalFiles: []
)
