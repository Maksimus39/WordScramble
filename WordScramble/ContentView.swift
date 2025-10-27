import SwiftUI

struct ContentView: View {
    
    let people = ["Maksim", "Larisa", "Andrey", "Bogdan"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    ContentView()
}
