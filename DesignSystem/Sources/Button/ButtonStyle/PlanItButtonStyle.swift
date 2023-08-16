import SwiftUI

public struct PlanItButtonStyle: ButtonStyle {
    public init(color: Color, style: PlanItButton.Style) {
        self.color = color
        self.style = style
    }
    var color: Color
    var style: PlanItButton.Style
    
    public func makeBody(configuration: ButtonStyle.Configuration) -> some View {
        switch style {
        case .fill: return AnyView(FillButton(color: color, configuration: configuration))
        }
    }
    
    struct FillButton: View {
        var color: Color
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) var isEnabled: Bool
        var body: some View {
            configuration.label
                .foregroundColor(.white)
                .padding()
                .background(isEnabled ? Color.Primary.skyBlue : Color.Primary.skyBlue.opacity(0.5))
                .cornerRadius(10)
                .opacity(configuration.isPressed ? 0.7: 1)
        }
    }
}


public extension Button {
    func style(_ style: PlanItButton.Style, color: Color) -> some View {
        self.buttonStyle(PlanItButtonStyle(color: color, style: style))
    }
}

