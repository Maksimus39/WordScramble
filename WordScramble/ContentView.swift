import SwiftUI

struct ContentView: View {
    
    let people = ["Maksim", "Larisa", "Andrey", "Bogdan"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
    
    func testStrings(){
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
