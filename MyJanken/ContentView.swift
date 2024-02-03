import SwiftUI

enum JanKen: String, CaseIterable {
    case gu = "✊"
    case choki = "✌️"
    case pa = "✋"
}

struct ContentView: View {
    @State private var selectedHand = JanKen.gu.rawValue

    var body: some View {
        VStack {
            Text(selectedHand)
                .font(.system(size: 200))
                .padding()

            Button(action: {
                selectedHand = JanKen.allCases.randomElement()?.rawValue ?? JanKen.gu.rawValue
            }) {
                Text("じゃんけんする!")
                    .frame(maxWidth: 200)
                    .frame(height: 100)
                    .background(Color.green)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
