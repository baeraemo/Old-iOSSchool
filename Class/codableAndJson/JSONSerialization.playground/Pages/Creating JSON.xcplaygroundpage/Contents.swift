//: [Previous](@previous)
import Foundation
//: - - -
//: # Creating JSON Data
//: * class func data(withJSONObject:options:) throws -> Data
//: * class func writeJSONObject(_:to:options:error:) -> Int
//: * class func isValidJSONObject(_:) -> Bool
//: - - -

//: ## Write JSON Object to OutputStream
//앱 안에 있는 파일을 밖으로 보내서 쓰게한다 output
func writeJSONObjectToOutputStream() {
  let jsonObject = ["hello": "world", "foo": "bar", "iOS": "Swift"]
  guard JSONSerialization.isValidJSONObject(jsonObject) else { return } //json파일 형태로 잘 적어놨나 확인작업 **json형태를 확인
  
  let jsonFilePath = "myJsonFile.json" //json파일 경로
  let outputJSON = OutputStream(toFileAtPath: jsonFilePath, append: false)! // 몰라도되는 부분이지만 저런형태로 만들어서 오픈해서 내용을 정리하고 닫는거
  outputJSON.open()
  _ = JSONSerialization.writeJSONObject(
    jsonObject,
    to: outputJSON,
    options: [.prettyPrinted, .sortedKeys], // key값에 정렬돼서 나온다
//        options: [], //걍나옴
    error: nil
  ) //열고 파일을 쓴다
  outputJSON.close()
  
    
    //만든게 잘 됐나 확인해서 찍어보는곳
  do {
    let jsonString = try String(contentsOfFile: jsonFilePath) //저장된 파일을 filejson해서 string으로한다
    print(jsonString)
  } catch {
    print(error.localizedDescription)
  }
}

//print("\n---------- [ writeJSONObjectToOutputStream ] ----------\n")
//writeJSONObjectToOutputStream()


//: ## Data with JSON Object
private func dataWithJSONObject() {
  // 위에꺼는 한줄짜리지만 이건 다양하게 json형태로 만든것
    // 얘는 형태가 다양해서 컴파일러가 유추가 불가능하니까 [String: Any] 이런식으로 적어줘야한다
    let jsonObject1: [String: Any] = [
    "someNumber" : 1,
    "someString" : "Hello",
    "someArray"  : [1, 2, 3, 4],
    "someDict"   : [
      "someBool" : true
    ]
  ]
    //얘는 컴파일러가 형태가 같아서 알아서 유추한다
  let jsonObject2 = [
    "hello": "world",
    "foo": "bar",
    "iOS": "Swift",
    "1": "2"
  ]
  
    //json형태가 맞는지 확인해보는 것,    맞을때만 넘어가게 만든것
  guard JSONSerialization.isValidJSONObject(jsonObject1),
    JSONSerialization.isValidJSONObject(jsonObject2)
    else { return }
  
  do {
    let encoded = try JSONSerialization.data(withJSONObject: jsonObject2) //데이터로 바꿔달라고 요구하는것
//    encoded.write(to: <#T##URL#>, options: <#T##Data.WritingOptions#>) 이런식으로 쓴다, 데이터로 전환할때 옵션이 적용안된다
    let decoded = try JSONSerialization.jsonObject(with: encoded) //여기서 부터는 잘 되었는지 확인하는 단계 //스위프트에서 사용할 수 있는 jsonobject형태로 바꾸는것
    if let jsonDict = decoded as? [String: Any] {
      print(jsonDict)
    }
  } catch {
    print(error.localizedDescription)
  }
}

//print("\n---------- [ dataWithJSONObject ] ----------\n")
//dataWithJSONObject()



//: - - -
//: # Creating a JSON Object
//: * class func jsonObject(with:options:) throws -> Any
//: - - -

//: ## JSON Object with Data
private func jsonObjectWithData() {
//  let jsonString =  """
//  {
//    "someNumber" : 1,
//    "someString" : "Hello",
//    "someArray"  : [1, 2, 3, 4],
//    "someDict"   : {
//      "someBool" : true
//    }
//  }
//  """
    //키 벨류가 스트링인 제이슨 형태
  let jsonString = """
     { "hello": "world", "foo": "bar", "iOS": "Swift" }
  """
  let jsonData = jsonString.data(using: .utf8)! //인터넷에서 다운받을 때 오는 실제 데이터 형태가 이거임

  do {
    let foundationObject = try JSONSerialization.jsonObject(with: jsonData) //이런식으로 넣어주면 된다, 옵션적용 안한것
    if let jsonDict = foundationObject as? [String: Any] { // 파씽?: 010101010 이런걸 any나 스트링 인트 뭐 그런개념으로 나누는거라 생각
      print(jsonDict)
    }
  } catch {
    print(error.localizedDescription)
  }
}

//print("\n---------- [ jsonObjectWithData ] ----------\n")
//jsonObjectWithData()


//: ## JSON Object with InputStream
//앱 밖에 있는 파일을 안으로 가져와서 쓴다 input
private func jsonObjectWithInputStream() {
  let jsonFilePath = "myJsonFile.json"
  let inputStream = InputStream(fileAtPath: jsonFilePath)! //인풋스트림으로 만들기
  inputStream.open() // 열기
  defer { inputStream.close() } //항상 열었으면 닫기 디퍼로한것
  
  guard inputStream.hasBytesAvailable else { return } // 해당스트림을 사용할 수 있는지 확인 여부가 hasby다 **input형태를 확인
  
  do {
    let jsonObject = try JSONSerialization.jsonObject(with: inputStream) //인풋을 오브젝트로 만든것
    print(jsonObject)
  } catch {
    print(error.localizedDescription)
  }
}

//print("\n---------- [ jsonObjectWithInputStream ] ----------\n")
//jsonObjectWithInputStream()

//: [Next](@next)
