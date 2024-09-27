import Foundation
import Alamofire

class JokesViewModel : ObservableObject {
    
    @Published var jokes = [Jokes]()
    
    init(){
        
        getJokes()
    }
    
    func getJokes(count: Int = 4) {
     
        for _ in 0..<count {
            AF.request("https://api.chucknorris.io/jokes/random", method: .get).responseDecodable(of: Jokes.self) { response in
                
                switch response.result {
                    
                case .success(let data):
                    print(data.value)
                    DispatchQueue.main.async {
                        self.jokes.append(data)
                    }
                    
                case .failure(let error):
                    print(error)
                }
                
            }
        }
    }
    
    func addNewJokes(count: Int = 1) {
        
        getJokes(count: count)
    }
}
