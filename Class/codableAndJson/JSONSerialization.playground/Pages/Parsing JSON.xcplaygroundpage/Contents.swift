//: [Previous](@previous)

import Foundation
import PlaygroundSupport //바로 종료되는걸 방지하고 실행을 유지해라 뭐 그런거
PlaygroundPage.current.needsIndefiniteExecution = true
//: - - -
//: # Parsing JSON
//: - - -

let apiURL = URL(string: "http://api.open-notify.org/astros.json")! //json파일의 형태이다


// 강사님이 하신 부분이라 주석처리하고 새로 만들기

//let task = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
//  guard error == nil else {
//    print(error!.localizedDescription)
//    return
//  }
//  guard let response = response as? HTTPURLResponse, 200..<400 ~= response.statusCode else {
//    print("StatusCode is not valid")
//    return
//  }
//  guard let data = data,
//    let jsonObject = try? JSONSerialization.jsonObject(with: data) as! [String: Any],
//    (jsonObject["message"] as! String) == "success"
//    else {
//      print("Failed to download jsonData")
//      return
//  }
//  guard let peopleCount = jsonObject["number"] as? Int,
//    let people = jsonObject["people"] as? [[String: String]]
//    else {
//      print("Failed to parse JSON")
//      return
//  }
//  print("총 \(peopleCount)명의 우주비행사가 탑승 중입니다.")
//
//  print("= 우주비행사 명단 =")
//  people
//    .flatMap { $0["name"] }
//    .forEach({ print($0) })
//}
//
//task.resume()

//urlsession 은 지금은 몰라도 ㄱㅊ
let dataTask = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
    guard error == nil else {
    print(error!.localizedDescription)
    return
    }
    //200~399까지 statuscode가 안에있는지 확인해보는것 틀리면 retrun
    guard let response = response as? HTTPURLResponse, 200..<400 ~= response.statusCode else {
    print("StatusCode is not valid")
    return
    }
    //데이터도 체크해보기
    guard let data = data,
    let jsonObject = try? JSONSerialization.jsonObject(with: data) as! [String: Any]
        else {
        print("No Data")
        return
    }

    guard (jsonObject["message"] as? String) == "success",
    let people = jsonObject["people"] as? [[String: String]],
    let peopleCount = jsonObject["number"] as? Int
        else {
            print("Parsing Error")
            return
    }
    
    print(people)
    print(peopleCount)
    
}
dataTask.resume() // 실행하라는 명령어인 resume해줘야한다 꼭 잊지않기



//project에서 info에서 app trans 새로만들어주고 allow arbi = yes로 바꿔줘야한다 그래야 https가 기본으로 읽는건데  그냥 http도 읽어진다
//: [Next](@next)
