import UIKit
//딕셔너리는 들어있는 값에 순서가 없지만, 키를 기준으로 정렬하고 싶습니다. 그래서 키와 값을 튜플로 구성하고, 이를 순서대로 리스트에 넣으려고 합니다.
//예를들어 {김철수:78, 이하나:97, 정진원:88}이 있다면 각각의 키와 값을
//
//(김철수, 78)
//(이하나, 97)
//(정진원, 88)
//과 같이 튜플로 분리하고 키를 기준으로 정렬해서 다음과 같은 리스트를 만들면 됩니다.
//[ (김철수, 78), (이하나, 97), (정진원, 88) ]
//
//다음 sort_dictionary 함수를 완성해 보세요.

//func q1(name:String, soo:Int) -> [String:Int]{
//
//
//    return dict1
//}

func reQ1(dict:[String:Int]) -> [(String, Int)] {
    var tuple:[(String, Int)] = []
    for n in dict{
    let (key, value) = n
        
        tuple.append((key,value))
    }
    
    print(tuple)
    tuple.sorted(by: )
    
    print(tuple)
    return tuple
}

var dict1:[String:Int] = [
    
    "정진원": 88,
    "이하나": 111,
    "김철수": 100
]

reQ1(dict: dict1)

//qweqweqwe

//옵셔널 강제 !를 붙히면 풀림
//inputNum이 한개가 아닌 두개라면?
//옵셔널 바인딩방법
func isNumber(inputNum1:String?, inputNum2:String) -> Bool {
    if let input11: String = inputNum1 , let input22 = Int(inputNum2) {
        print("\(input11)" + "\(input22)")
        return true
    }
    else{
        return false
    }
    
    
}
