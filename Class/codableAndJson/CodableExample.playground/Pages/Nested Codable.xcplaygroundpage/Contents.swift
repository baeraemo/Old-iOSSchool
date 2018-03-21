//: # Nested Codable
import Foundation

let jsonString = """
{
  "message": "success",
  "number": 3,
  "people": [
    {
      "craft": "ISS",
      "name": "Anton Shkaplerov"
    },
    {
      "craft": "ISS",
      "name": "Scott Tingle"
    },
    {
      "craft": "ISS",
      "name": "Norishige Kanai"
    }
  ]
}
"""

let jsonData = jsonString.data(using: .utf8)!

struct phone: Decodable {
    let message: String
    let number: Int
    let people: [dic]
    
    enum codingKey: String, CodingKey{
        case message
        case number
        case people
    }
}

struct dic: Decodable {
    let craft: String
    let name: String
    
    enum codingKey: String, CodingKey {
        case craft
        case name
    }
}
    
let good = try JSONDecoder().decode(phone.self, from: jsonData)
print(good.message)
print(good.number)
for one in good.people{
print(one)
}








//
//
//
//do {
//  let astronauts = try JSONDecoder().decode(Astronauts.self, from: jsonData)
//  print(astronauts.message)
//  print(astronauts.number)
//  for person in astronauts.people {
//    print(person)
//  }
//} catch {
//  print(error.localizedDescription)
//}
//
//
////
//
//struct Astronauts: Decodable {
//  let message: String
//  let number: Int
//  let people: [Person]
//
//  enum CodingKeys: String, CodingKey {
//    case message
//    case number
//    case people
//  }
//
//  struct Person: Decodable {
//    let name: String
//
//    enum CodingKeys: String, CodingKey {
//      case name
//    }
//  }
//}


//: [Next](@next)
