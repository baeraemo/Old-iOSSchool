//: Playground - noun: a place where people can play

import UIKit

//1.삼각수 구하기 : 삼각수란 1부터 모든 수의 합이다. ex)삼각수 10 =  55 •메소드 실행:triangular(num:10)
//  triangular(num:-1) •결과 :  55               // 0
// 재연습 하기
func smagac(soo:Int) -> Int {
    var soo1 = soo
    var sum = 0
    for _ in 1...soo{
        sum += soo1
        soo1 -= 1
        
    }
    return sum
}
smagac(soo: 10)

//2.각 자리수 더하는 메소드•메소드 실행 :addAll(num:123)
// addAll(num:5792)•결과 :  6                    // 23
func gacjari(soo:Int) -> Int{
    var soo1 = soo
    var mac = 0
    while soo1 > 0{
        mac += soo1 % 10
        soo1 = soo1 / 10
    }
    return mac
}
gacjari(soo: 12345)

//3.숫자 리버스 함수 •메소드 실행 : revers(num:123)
// revers(num:341) •결과 :  321                  // 143
func rever(soo:Int) -> String{
    var soo1 = soo
    var mac = 0
    var str = ""
    while soo1 > 0{
        mac = soo1 % 10
        str += String(mac)
        soo1 = soo1 / 10
    }
    return str
}
rever(soo: 12345)


//기초편
//이름(문자열)을 받아서 이름을 출력하는 함수
func name(name: String)
{
    print("\(name)")
}
name(name: "배태웅")
//나이*(정수)를 받아서 나이를 출력하는 함수
func age(_ age: Int, _ soo: Int){
    let hab = age * soo
    print("\(age) * \(soo) = \(hab)")
}
age(29,3)
//이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func jagisogae(_ name: String, _ joso: String){
    print("저의 이름은 \(name)입니다, 사는곳은 \(joso)입니다. 잘 부탁 드립니다.")
}
jagisogae("배태웅","평택")

//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func jungsoo1(soo: Int) -> Int{
    return soo / 2
}
jungsoo1(soo: 4)
//정수를 하나 입력받아서 제곱을 반환해주는 함수
func jungsoo2(soo: Int) -> Int{
    return soo * soo
}
jungsoo2(soo: 4)
//부모님과 내 나이를 입력 후 그 나이차를 프린트 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
func boomonim(father: Int, mother: Int, me: Int){
    let cha = (father + mother) - me
    print("아버지의 나이는 \(father)이고 어머니의 나이는 \(mother)입니다. 내 나이는 \(me)이니까 우리의 나이 차이는 \(cha)입니다.")
}
boomonim(father: 64, mother: 53, me: 29)
//    다중 입력, 반환 함수
//    두개의 정수를 입력받아 두수의 합을 반환해주는 함수
//    두개의 정수를 입력받아 두수의 차를 반환해주는 함수
//    두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
//    두개의 정수를 입력받아 두수의 나눗셈을 반환해주는 함수
//    시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
//    캐스팅 연습
//    정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
//    정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
//    실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수
//    if-else 문
//    두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
//    정수를 하나 입력받아 그 수가 짝수이면 true를 반환하는 함수
//    문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
//    두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
//    정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
//    시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+" /// 80 >>> "B")
//    여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
//    윤년 구하기 문제(윤년은 2월에 하루를 더해지는 년으로써 4년마다 찾아오며, 100년이 되는해는 윤년이 아니나, 400년의 되는 해는 윤년이다.)
//    세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false

//    for문
//    정수 하나를 입력받아서 1부터 입력받은 수까지의 모든 수를 더한값을 반환해주는 함수 (ex: 10 >>> 55)
func smagac1(soo:Int) -> Int {
    var soo1 = soo
    var sum = 0
    for _ in 1...soo{
        sum += soo1
        soo1 -= 1
        
    }
    return sum
}
smagac1(soo: 10)
//    정수 두개를 입력받아서 첫번째 수를 두번째 수의 횟수 만큼 곱한 값을 반환해주는 함수 (ex: 2,3 >>> 8 /// 3,3 >>> 27)
func q1(soo1: Int, soo2: Int) -> Int{
    var soo3 = 1
    for _ in 1...soo2 {
        soo3 *= soo1
        
    }
    return soo3
}
q1(soo1: 2, soo2: 3)
//    정수를 받아서 각 자리의 합을 반환해주는 함수(ex: 312 >>> 6)
func  q2(soo: Int) -> Int{
    var sum = 0
    var soo1 = soo
    while soo1 > 0{
        let soo2 = soo1 % 10
        soo1 = soo1 / 10
        sum += soo2
    }
    return sum
}
q2(soo: 3125)
//    정수 하나를 받아서 1부터 정수까지의 숫자중 짝수를 모두 출력해주는 함수
func q3(soo: Int){
    for soo1 in 1...soo{
        if soo1 % 2 == 0{
            print("짝수\(soo1)")
        }
    }
}
q3(soo: 5)
//    100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
func q4(soo: Int, soo1: Int) {
    var str = ""
    var sum = 0
    for hab in 1...100{
        if hab % soo == 0 && hab % soo1 == 0 {
            sum = hab
            str += String(sum) + " "
 
        }
    }
           print("\(str)")
}
q4(soo: 3, soo1: 5)
//    정수 하나를 받아서 그 정수의 약수를 출력하는 함수
func q5(soo: Int) {
    var sum = ""
    for soo1 in 1...soo{
        if  soo % soo1 == 0{
            sum += String(soo1) + " "
        }
    }
    print ("\(sum)")
}
q5(soo: 5)
//    2 이상의 정수를 입력받아, 그 수가 소수인지 아닌지를 판별하는 함수
func q6(soo: Int) -> Bool{
    let soo2 = soo - 1
    for soo1 in 2 ... soo2{
        if soo % soo1 == 0{
            return false
        }
    }
    return true
}

/////////////////////////////////////////////////////////////////////////////////////////////////
q6(soo: 8)

11
 23
  58
//    정수 하나를 입력받아서 입력받은 수 번째 피보나치 수를 반환하는 함수를 작성하세요. (ex: 3 >>> 2, 7 >>> 13)
func q7(soo: Int) ->  Int {
    var first = 1
    var second = 1
    for _ in 1..<soo{
        let temp = second
        second += first
        first = temp
    }
    return first
}
q7(soo: 7)

