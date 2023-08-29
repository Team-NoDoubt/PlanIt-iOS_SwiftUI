import ProjectDescription

extension TargetDependency {
    public struct Module {
        public static let APIModule = module(name: "BaseModule")
        
    }
    private static func module(name: String) -> TargetDependency {
        return TargetDependency.project(
            target: name,
            path: .relativeToRoot("Modules/\(name)")
        )
    }
    
}
