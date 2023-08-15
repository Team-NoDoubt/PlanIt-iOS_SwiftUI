import SwiftUI

struct PlanItTextFieldPreview: View {
    @State var text: String = ""

    var body: some View {
        VStack(spacing: 15) {
            PlanItTextField(
                text: $text,
                placeholder: "아이디"
            )
            .padding([.leading, .trailing], 40)
            PlanItTextField(
                text: .constant(""),
                placeholder: "비밀번호"
            )
            .padding([.leading, .trailing], 40)
        }

    }
}
