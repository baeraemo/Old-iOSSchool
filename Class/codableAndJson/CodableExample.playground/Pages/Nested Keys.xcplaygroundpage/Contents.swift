//: [Previous](@previous)
//: # Nested Keys
import Foundation


let jsonString = """
[
  {
    "latitude": 30.0,
    "longitude": 40.0,
    "additionalInfo": {
      "elevation": 50.0
    }
  },
  {
    "latitude": 60.0,
    "longitude": 120.0,
    "additionalInfo": {
    "elevation": 20.0
    }
  }
]
"""

struct Coordinate { //빼고자하는애들 목록
  var latitude: Double
  var longitude: Double
  var elevation: Double

  enum CodingKeys: String, CodingKey { //처음3개 정의
    case latitude
    case longitude
    case additionalInfo
  }
  enum AdditionalInfoKeys: String, CodingKey { //실질적으로 빼야하는거
    case elevation
  }
}

extension Coordinate: Decodable {
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    latitude = try values.decode(Double.self, forKey: .latitude) // 위도 직접빼기
    longitude = try values.decode(Double.self, forKey: .longitude) // 경도 직접 빼기

    let additionalInfo = try values.nestedContainer(keyedBy: AdditionalInfoKeys.self, forKey: .additionalInfo) //nested는 안에있는 값을 빼고자할때
    elevation = try additionalInfo.decode(Double.self, forKey: .elevation) // 에드인포안에 elevartion값을 더블로 뺀다
  }
}

extension Coordinate: Encodable {
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(latitude, forKey: .latitude)
    try container.encode(longitude, forKey: .longitude)

    var additionalInfo = container.nestedContainer(keyedBy: AdditionalInfoKeys.self, forKey: .additionalInfo)
    try additionalInfo.encode(elevation, forKey: .elevation)
  }
}

let jsonData = jsonString.data(using: .utf8)!
do {
  let objects = try JSONDecoder().decode([Coordinate].self, from: jsonData)
  objects.forEach { print($0) }
} catch {
  print(error.localizedDescription)
}


//: [Next](@next)
