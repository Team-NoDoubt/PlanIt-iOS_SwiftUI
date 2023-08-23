import SwiftUI
import PlanItDS

struct ChangesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("이번주 교체내역")
                    .planItText(type: .medium20, textColor: .black)
                    .padding(.top, 23)
                    .padding(.leading, 30)
                Spacer()
            }
            Spacer().frame(height: 50)
            ScrollView {
                ChangesCell(
                    beforePeroid: "1교시",
                    beforeSubject: "데이터베이스",
                    changedPeroid: "2교시",
                    changedSubject: "영어"
                )
                .padding([.leading, .trailing], 30)
            }
        }
    }
}
