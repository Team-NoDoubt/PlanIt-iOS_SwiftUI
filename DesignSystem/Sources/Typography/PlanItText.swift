import SwiftUI
import UIKit

public extension Text {
    func planItText(type: FontType, textColor: Color) -> some View {
        ModifiedContent(content: self, modifier: PlanItText(type: type, textColor: textColor))
    }
    func planItText(type: FontType) -> some View {
        ModifiedContent(content: self, modifier: PlanItText(type: type))
    }
}

struct PlanItText: ViewModifier {

    var type: FontType
    var textColor: Color
    var font: UIFont

    init(type: FontType, textColor: Color) {
        self.type = type
        self.textColor = textColor

        if textColor == .GrayScale.white && type.fontWeight == .regular {
            self.font = .systemFont(ofSize: type.fontSize, weight: .medium)
        } else {
            self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        }
    }

    init(type: FontType) {
        self.type = type
        self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        self.textColor = type.defaultColor
    }

    func body(content: Content) -> some View {
        content
            .font(Font(font))
            .lineSpacing(type.fontHeight - font.lineHeight)
            .padding(.vertical, (type.fontHeight - font.lineHeight) / 2)
            .foregroundColor(textColor)
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextPreview()
    }
}
