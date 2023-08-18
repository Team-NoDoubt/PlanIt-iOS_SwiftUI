import SwiftUI
import PlanItDS

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    var body: some View {
        VStack {
            Text("로그인")
                .planItText(type: .semiBold20, textColor: .black)
                .padding(.top, 80)
            Spacer()
                .frame(height: 25)
            PlanItTextField(
                text: $viewModel.id,
                placeholder: "아이디"
            )
            Spacer().frame(height: 15)
            PlanItTextField(
                text: $viewModel.password,
                placeholder: "비밀번호",
                isSecure: true
            )
            Spacer().frame(height: 45)
            PlanItButton(
                text: "로그인",
                action: {}
            )
            Spacer()
        }
        .padding([.leading, .trailing], 30)
    }
}
