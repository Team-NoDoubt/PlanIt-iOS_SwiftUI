import SwiftUI
import PlanItDS

struct TimeTableView: View {
//    print(viewModel.getTimeTable())
    @StateObject var viewModel: TimeTableViewModel
    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .frame(height: 20)
                HStack {
                    Spacer().frame(width: 38)
                    Text("이번주 시간표")
                        .planItText(type: .medium20)
                    Spacer()
                }
                Spacer()
            }
        }
        .onAppear {
            viewModel.getTimeTable()
            print("qw")
        }

    }
}
