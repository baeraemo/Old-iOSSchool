//: Playground - noun: a place where people can play

import UIKit

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
//정수를 하나 입력받아서 제곱을 반환해주는 함수
//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수
//<응용>
//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수


//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
func name(name: String) -> String{
    return name
}
name(name: "배태웅")

//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func age(age: Int) -> Int{
    return age
}
age(age: 29)

//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func so(name: String, age: String) -> String {
    let A = "저의 이름은" + name + "이고 나이는" + age + "입니다"
    return  A
}
so(name: "배태웅", age: "29")

//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func ham(soo: Int) -> Int{
    return soo / 2
}
ham(soo: 6)

//정수를 하나 입력받아서 제곱을 반환해주는 함수
func jung(jung: Int) -> Int{
    return jung * jung
}
jung(jung: 3)

//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
func jung(jung1: Int, jung2: Int) -> Int{
    return jung1 + jung2
}
jung(jung1: 5, jung2: 3)

//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수

func jung(jung3: Int, jung4: Int) -> Int{
    return jung3 - jung4
}
jung(jung3: 5, jung4: 3)

//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수

func jung(jung5: Int, jung6: Int) -> Int{
    return jung5 * jung6
}
jung(jung5: 5, jung6: 3)

//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수

func jung(jung7: Double, jung8: Double) -> Double{
    return jung7 / jung8
}
jung(jung7: 10, jung8: 5)

//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
func age1(father: Int, mother: Int, me: Int) -> String{
    let hab1 = String((father + mother) - me)
    let father1 = String(father)
    let mother1 = String(mother)
    let me1 = String(me)
    return "아버지의 나이는" + father1 + "이고 어머니의 나이는" + mother1 + "이며 내 나이는" + me1 + "이므로 우리의 나이 차이는" + hab1 + "입니다."
}

age1(father: 63, mother: 52, me: 28)

//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
func average(a: Double, b: Double, c: Double, d: Double) -> Double{
    let average1 = (a + b + c + d) / 4
    return average1
}

average(a: 80.5, b: 90.5, c: 78, d: 62)

//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
func jungsoo(jungsoo: Double) -> Int{
    print(jungsoo)
    let sil = Int(jungsoo)
    return sil
}

jungsoo(jungsoo: 4.5)

//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
func jungsoo1(jungsoo1: Int, jungsoo2: Int) -> String{
    let hab = String(jungsoo1) + String(jungsoo2)
    return hab
}
jungsoo1(jungsoo1: 3, jungsoo2: 5)

//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수
func silsoo(sil: Double) -> Int{
    print(sil)
    let sil1 = Int(sil)
    return sil1
}
silsoo(sil: 5.4)
