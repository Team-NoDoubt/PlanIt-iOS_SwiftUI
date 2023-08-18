import SwiftUI

public struct PlanItButton: View {

    @Binding var isDisabled: Bool
    var text: String?
    var image: Image?
    var style: Style = .fill
    var color: Color = .Primary.skyBlue
    var action: () -> Void
    var textAndImage: Bool { text != nil && image != nil }
    
    public init(
        isDisabled: Binding<Bool> = .constant(false),
        text: String? = nil,
        image: Image? = nil,
        style: PlanItButton.Style = .fill,
        color: Color = .black,
        action: @escaping () -> Void
    ) {
        self._isDisabled = isDisabled
        self.text = text
        self.image = image
        self.style = style
        self.color = color
        self.action = action
    }
    
    public enum Style {
        case fill
    }
    public var body: some View {
        Button(action: action, label: {
            HStack() {
                Spacer()
                HStack(spacing: textAndImage ? 12 : 0) {
                    Text(text ?? "")
                    image
                }
                Spacer()
            }
        }).style(style, color: color)
    }
}

struct Buttons_Previews: PreviewProvider {
    public static var previews: some View {
        VStack {
            PlanItButton(action: { print("클릭") })
            .padding([.leading, .trailing], 30)
        }
    }
}
