import SwiftUI

struct DetailView: View {
    let joke: Jokes
    @State private var translatedText: String = ""
    @State private var isLoading: Bool = false
    let translationService = TranslationService()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Joke Details")
                .font(.largeTitle)
                .padding()
            
            if isLoading {
                
                VStack {
                    Spacer()
                    ProgressView("Translating...")
                        .padding()
                    Spacer()
                }
                .frame(maxWidth: .infinity , maxHeight: .infinity)
                
            } else if !translatedText.isEmpty {
                Text(translatedText)
                    .font(.body)
                    .padding()
            } else {
                Text(joke.value)
                    .font(.body)
                    .padding()
            }
            
            Spacer()
            
            Button(action: {
                translateJoke()
            }) {
                Text("Translate Joke")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            } .frame(maxWidth:  .infinity)
                .padding()
        }
        .navigationTitle("Joke")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func translateJoke() {
        isLoading = true
        translationService.translate(text: joke.value) { translatedText in
            DispatchQueue.main.async {
                isLoading = false
                self.translatedText = translatedText ?? "Translation failed"
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(joke: Jokes(categories: [],
                               createdAt: "2024-10-10",
                               iconURL: "https://example.com/icon.png",
                               id: "1234",
                               updatedAt: "2024-10-10",
                               url: "https://example.com",
                               value: "Sample Joke"))
    }
}
