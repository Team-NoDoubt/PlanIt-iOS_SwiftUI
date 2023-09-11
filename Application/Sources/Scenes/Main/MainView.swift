import SwiftUI
import PlanItDS

struct MainView: View {

    init() {

        UITabBar.appearance().backgroundColor = .init(Color.GrayScale.gray50)
    }

    var body: some View {
        TabView {
            TimeTableView(viewModel: TimeTableViewModel())
                .tabItem {
                    Image(systemName: "calendar")
                    Text("시간표")
                }
                .tag(0)
                .onAppear {
                      print("1")
                  }
            ChangesView()
                .tabItem {
                    Image(systemName: "arrow.left.arrow.right")
                    Text("교체내역")
                }
                .tag(1)
                .onAppear {
                      print("2")
                  }
            EvaluationView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("수행쳥가")
                }
                .tag(2)
                .onAppear {
                      print("3")
                  }
            SeeMoreView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("더보기")
                }
                .tag(3)
                .onAppear {
                      print("4")
                  }
        }
        .accentColor(Color.Primary.skyBlue)
    }
}
