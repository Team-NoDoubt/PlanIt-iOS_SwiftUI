import ProjectDescription

extension TargetDependency {
    public struct Module {
        public static let EmptyModule = module(name: "EmptyModule")
        
    }
    private static func module(name: String) -> TargetDependency {
        return TargetDependency.project(
            target: name,
            path: .relativeToRoot("Modules/\(name)")
        )
    }
    
}
