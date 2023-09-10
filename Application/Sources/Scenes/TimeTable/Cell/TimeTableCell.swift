import SwiftUI
import PlanItDS

struct TimeTableCell: View {
    var subject: String
    var body: some View {
        Text(subject)
            .planItText(type: .semiBold16, textColor: Color.GrayScale.gray700)
    }
}
