import Foundation

class WebService {
    
    private let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
    func getArticles(completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articles = try? JSONDecoder().decode([Article].self, from: data)
                print(articles)
                completion(articles)
            }
        }.resume()
    }
}
