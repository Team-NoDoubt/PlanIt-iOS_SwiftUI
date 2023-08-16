//import SwiftUI
//
//public struct FillButton: View {
//
//    @Binding var isDisabled: Bool
//    var buttonText: String
//    var action: () -> ()
//
//    public init(
//        isDisabled: Binding<Bool> = .constant(false),
//        buttonText: String,
//        action: @escaping () -> ()
//    ) {
//        self._isDisabled = isDisabled
//        self.buttonText = buttonText
//        self.action = action
//    }
//
//    public var body: some View {
//        Button(action: action) {
//            Text(buttonText)
//                .font(.system(size: 16, weight: .semibold))
//                .foregroundColor(.white)
//                .frame(maxWidth: .infinity)
//                .padding([.top, .bottom], 10)
//                .background(isDisabled ? Color.Primary.skyBlue.opacity(0.5) : Color.Primary.skyBlue)
//        }
//        .frame(height: 50)
//        .cornerRadius(12)
//        .disabled(isDisabled)
//    }
//}
//
//struct FillButton_Preview: PreviewProvider {
//    static var previews: some View {
//        VStack {
//            FillButton(buttonText: "아이디", action: { })
//
//        }
//    }
//}
