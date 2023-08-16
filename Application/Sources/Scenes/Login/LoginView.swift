import SwiftUI
import PlanItDS

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    var body: some View {
        VStack {
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
            PlanItButton(text: "로그인", action: {})
                .frame(height: 100)
        }
        .padding([.leading, .trailing], 50)
    }
}
