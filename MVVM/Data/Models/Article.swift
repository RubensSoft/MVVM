import Foundation

struct Article: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
