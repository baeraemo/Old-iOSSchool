//: Playground - noun: a place where people can play

import UIKit

func arrayy(){
    var list:[String] = ["my", "name", "is", "a", "Bae", "TaeWoong"]
    list.append("입니다.")
    print("list배열의 총 갯수는", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("my introduce it my self.", at: 0)
    
    for text in list{
        print(text)
    }
}

func settest(){
    let odddigits : Set = [1, 3, 5, 7, 9, 10]
    let evendigits : Set = [2, 4, 6, 8]
    let primedigits : Set = [2, 3, 5, 7]
    
    print("test===")
    //교집합
    let intersectList = odddigits.intersection(evendigits)
    print(intersectList)
    //교집합의 여집합
    let differenceList = odddigits.symmetricDifference(primedigits)
    print(differenceList)
    //합집함 & 정렬
    let unionList = odddigits.union(evendigits).sorted()
    print(unionList)
    //차집합 & 정렬
    let subtractList = odddigits.subtracting(primedigits).sorted()
    print(subtractList)
    
}

func dicTest(){
    //기본 딕셔너리
    var dic:[String:Any] = ["name":"joo", "age":20, "job":"Developer", "isImgle":true]
    //딕셔너리 추가
    dic.updateValue("Seoul", forKey:"address")
    //딕셔너리 수정
    dic.updateValue("winman", forKey: "name")
    //삭제
    dic.removeValue(forKey: "uiSingle")
    
    //값 불러오기
    let introduce: String = " 제 이름은 " + (dic["name"] as! String) + "입니다."
    
    let doubleAge = (dic["age"] as! Int) * 2
    
    print("\(introduce), \(doubleAge)")
}




//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
func q1(soo1: Int, soo2: Int) -> [Int]{
    var returnlist:[Int] = []
    for n in soo1...soo2{
        returnlist.append(n)
    }
    return returnlist
}
q1(soo1: 1, soo2: 10)

//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
func q2(soo1: [Int]) -> Int{
    let soo2 = soo1.count - 1
    var sum = 0
    for n in 0...soo2 {
        sum += soo1[n]
    }
    return sum

}
q2(soo1: [1,2,3,4,5,6])

//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]
func q3(soo1: [String:Any]){
    for (key,value) in soo1{
        print(key,value)
    }
}

q3(soo1: ["name":"joo", "age":20, "job":"Developer"])

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
func q4(soo1: [Int]) -> [Int] {
    let set : [Int] = Set(soo1).sorted()
    return set
    
}

//  정답
//var soo2: [Int] = []
//
//for n in soo1{
//    if !soo2.contains(n){
//        soo2.append(n)
//    }
//    return soo2

q4(soo1: [1,2,3,4,4,5,5,6,7,8,8,9])
//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]
func q5(soo1: [Int]) -> [[Int]]{
    let soo = soo1
    var soo2 = soo1
    var hab: [[Int]]  = []
    for n in soo {
        soo2.remove(at: 0)
        for a in soo2{
            hab.append([n,a])
        }
    }
    print(hab)
    return hab
}

////정답
//var resultlist:[[Int]] = []
//for n in 0..<soo1.count{
//    var firstv = soo1[n]
//
//    for i in n+1..<soo1.count{
//    let seconv = soo1[i]
//        resultlist.append([firstv,seconv])
//    }
//
//}






q5(soo1: [1,2,3,4])




//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
////계속 보고 이해하기
func q6(soo: [Int]) -> [Int]{
var sortedlist = soo
    for index in 0..<sortedlist.count{
        var miniumnum = sortedlist[index]   //3 = 0                5 = 4
        var miniumnumindex = index          // 0                         4
        for selindex in (index+1)..<sortedlist.count{                     //5
            let selectnum = sortedlist[selindex]       // 1
            if miniumnum > selectnum{              //               5 > 1
                miniumnum = selectnum
                miniumnumindex = selindex
            }
        }
        if miniumnumindex != index{
            sortedlist.swapAt(index, miniumnumindex)
        }
    }
    return sortedlist
}
q6(soo: [3,4,5,1,2,6])
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수


//////// 마무리하기, 물어보기
func findprimenum(lastnum: Int) -> [Int] {
    var primenum:[Int] = []
    var atcset:Set<Int> = []
    
    for checknum in 2...lastnum
    {
        if atcset.contains(checknum){
            
        }
    }
    return primenum
}






