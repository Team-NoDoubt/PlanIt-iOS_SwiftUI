import SwiftUI
import PlanItDS

struct ChangesCell: View {
    var beforePeroid: String
    var beforeSubject: String
    var changedPeroid: String
    var changedSubject: String
    var body: some View {
        HStack {
            Spacer()
            Text("\(beforePeroid):")
                .planItText(type: .medium12, textColor: .black)
            Text(beforeSubject)
                .planItText(type: .medium12, textColor: .black)
                .padding(.trailing, 20)
            Image(systemName: "arrow.right")
                .scaledToFit()
                .frame(width: 12, height: 18)
                .padding(.horizontal, 20)
            Text("\(changedPeroid):")
                .planItText(type: .medium12, textColor: .black)
                .padding(.leading, 20)
            Text("\(changedSubject)")
                .planItText(type: .medium12, textColor: .black)
            Spacer()
        }
        .frame(height: 100)
        .background(Color.GrayScale.gray10)
        .cornerRadius(15)
        .shadow(color: Color.GrayScale.gray100, radius: 10, x: 5, y: 5)
    }
}
