import SwiftUI

struct ContentView: View {
    
    let people = ["Maksim", "Larisa", "Andrey", "Bogdan"]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    func testStrings(){
       let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let matches = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGoood = matches.location == NSNotFound
    }
}


#Preview {
    ContentView()
}
