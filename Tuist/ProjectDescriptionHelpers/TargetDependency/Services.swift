import ProjectDescription

extension TargetDependency {
    public struct Service {
        public static let AuthService = service(name: "AuthService")
        public static let TimeTableService = service(name: "TimeTableService")
    }
    private static func service(name: String) -> TargetDependency {
        return TargetDependency.project(
            target: name,
            path: .relativeToRoot("Services/\(name)"))
    }
    
}
