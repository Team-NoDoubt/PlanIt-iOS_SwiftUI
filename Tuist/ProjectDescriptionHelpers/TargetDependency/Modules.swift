import ProjectDescription

extension TargetDependency {
    public struct Module {
        public static let APIModule = module(name: "BaseModule")
        public static let DateModule = module(name: "DateModule")
        
    }
    private static func module(name: String) -> TargetDependency {
        return TargetDependency.project(
            target: name,
            path: .relativeToRoot("Modules/\(name)")
        )
    }
    
}
