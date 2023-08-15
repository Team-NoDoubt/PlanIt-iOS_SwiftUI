import SwiftUI

public struct PlanItTextField: View {
    let title: String
    @Binding var text: String
    let placeholder: String
    var isDisabled: Bool
    var isSecure: Bool
    var borderColor: Color
    var height: CGFloat
    
    public init(
        title: String = "",
        text: Binding<String>,
        placeholder: String = "",
        isDisabled: Bool = false,
        isSecure: Bool = false,
        borderColor: Color = Color.GrayScale.gray400,
        height: CGFloat = 50
    ) {
        self.title = title
        self._text = text
        self.placeholder = placeholder
        self.isDisabled = isDisabled
        self.isSecure = isSecure
        self.borderColor = borderColor
        self.height = height
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if !title.isEmpty {
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(Color.GrayScale.gray400)
                    .padding(.bottom, 3)
            }
            
            if isSecure {
                SecureField(placeholder, text: $text)
                    .disabled(isDisabled)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .stroke(borderColor, lineWidth: 1)
                    )
                    .frame(height: height)
            } else {
                TextField(placeholder, text: $text)
                    .disabled(isDisabled)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(borderColor, lineWidth: 1)
                    )
                    .frame(height: height)
            }
        }
    }
}

struct PlanItTextField_Preview: PreviewProvider {
    static var previews: some View {
            PlanItTextFieldPreview()
    }
}

