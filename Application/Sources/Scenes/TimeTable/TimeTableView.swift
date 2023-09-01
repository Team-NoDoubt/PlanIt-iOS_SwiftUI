import SwiftUI

struct TimeTableView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) {_ in
                VStack {
                    ForEach(0..<7) {_ in
                        Text("k")
                    }
                }
            }
        }
    }
}
