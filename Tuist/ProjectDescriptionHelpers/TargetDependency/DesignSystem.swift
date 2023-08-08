import ProjectDescription

extension TargetDependency {
    public struct DesignSystem {
        public static let PlanItDesignSystem = designSystem(name: "PlanItDS")
    }
    private static func designSystem(name: String) -> TargetDependency {
        return TargetDependency.project(
            target: name,
            path: .relativeToRoot("DesignSystem/"))
    }
}
