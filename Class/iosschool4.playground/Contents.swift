//: Playground - noun: a place where people can play

import UIKit


//시험 점수를 받아서 해당 점수의 등급을 반환해주는 함수

func scoreof(score: Int) -> String{
    if score >= 95 && score <= 100{
        let grade: String = "A+"
        return grade
    }
    else if score >= 90 && score < 95 {
        let grade: String = "A"
        return grade
    }
    else if score >= 85 && score < 90 {
        let grade: String = "B+"
        return grade
    }
    else if score >= 80 && score < 85{
        let grade: String = "B"
        return grade
    }
    let grade: String = "망"
    return grade
}

//grade를 받아서 point로 변환해주는 함수
func gradeof(grade: String) -> Double{
    var point: Double
    if grade == "A+"{
        point = 4.5
    }
    else if grade == "A"{
        point = 4.0
    }
    else if grade == "B+"{
        point = 3.5
    }
    else{
        point = 3.0
    }
    return point
}
let myscore: Double = gradeof(grade: scoreof(score: 91))

//<if>
//정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수
func jungof(jung: Int) -> Bool{
    let jung = jung % 2
    let jung1 = jung == 0 ? true : false
    return jung1
}
jungof(jung: 11)

//문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
func moonof(moon1: String, moon2: String) -> Bool{
    let moon3 = moon1 == moon2 ? true : false
    return moon3
}
moonof(moon1: "바보", moon2: "바보")
//두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
func jung(jung1: Int, jung2: Int) -> Int {
    var bigjung: Int = 0
    if jung1 > jung2{
        bigjung = jung1
    }
    else if jung1 < jung2 {
        bigjung = jung2
    }
    return bigjung
}
jung(jung1: 27, jung2: 29)

//정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
func jungsooof(jungsoo: Int) -> Bool{
    let jungsoo = jungsoo % 3
    let jungsoo1 = jungsoo == 0 ? true : false
    return jungsoo1
}
jungsooof(jungsoo: 8)
// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
func twojung(jung1: Int, jung2: Int) -> Double{
    var nanu: Double = 0
    if jung2 == 0{
        nanu = 0
    }
    else if jung2 != 0 {
        nanu = Double(jung1 / jung2)
    }
        return nanu
}
twojung(jung1: 6, jung2: 0)
//응용
//시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
////////////위에했음

//여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
func moregrade(grade1: String, grade2: String, grade3: String, grade4: String) -> String{
    var gradehab1: Double = 0
    var gradehab2: Double = 0
    var gradehab3: Double = 0
    var gradehab4: Double = 0
    
    if grade1 == "A" {
        gradehab1 = 100
    }
    else if grade1 == "B" {
        gradehab1 = 90
    }
    else if grade1 == "C" {
        gradehab1 = 80
    }
    else if grade1 == "D" {
        gradehab1 = 70
    }
    
    if grade2 == "A" {
        gradehab2 = 100
    }
    else if grade2 == "B" {
        gradehab2 = 90
    }
    else if grade2 == "C" {
        gradehab2 = 80
    }
    else if grade2 == "D" {
        gradehab2 = 70
    }
    
    if grade3 == "A" {
        gradehab3 = 100
    }
    else if grade3 == "B" {
        gradehab3 = 90
    }
    else if grade3 == "C" {
        gradehab3 = 80
    }
    else if grade3 == "D" {
        gradehab3 = 70
    }
    
    if grade4 == "A" {
        gradehab4 = 100
    }
    else if grade4 == "B" {
        gradehab4 = 90
    }
    else if grade4 == "C" {
        gradehab4 = 80
    }
    else if grade4 == "D" {
        gradehab4 = 70
    }
    
    let gradetotalhab: Double = (gradehab1 + gradehab2 + gradehab3 + gradehab4) / 4
    var gradeaverage: String = ""
    if gradetotalhab <= 100 && gradetotalhab > 90 {
        gradeaverage = "A"
    }
    else if gradetotalhab <= 90 && gradetotalhab > 80 {
        gradeaverage = "B"
    }
    else if gradetotalhab <= 80 && gradetotalhab > 70 {
        gradeaverage = "C"
    }
    else if gradetotalhab <= 70 && gradetotalhab > 60 {
        gradeaverage = "D"
    }
    return gradeaverage
}
moregrade(grade1: "B", grade2: "A", grade3: "C", grade4: "D")
//윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
func wun(year: Int) {
//    let yearwun1 = year % 4
//    let yearwun2 = Double(year) * 0.01
//    let yearwun3 = Int(yearwun2) % 10
  
//    if yearwun3 == 0 {
 //      print("윤년이 아닙니다")
  //  }
    
  //  else if yearwun1 == 0 {
   //     print("윤년입니다")
   // }
   // else {
    //    print("윤년이 아닙니다")
   // }
    if year % 100 == 0 {
        if year % 400 == 0{
            print("윤년입니다.")
        }
        else{
            print("윤년이아닙니다.")
        }
    }
    else if year % 4 == 0 {
        print("윤년입니다.")
    }
    else {
        print("윤년이아닙니다.")
    }
    
}
wun(year: 2016)
//세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.
func yang(yang1: Int, yang2: Int, yang3: Int) -> Bool{
    let yanghab = yang1 * yang2 * yang3
    let yanghab1 = yanghab > 0 ? true : false
    return yanghab1
    
    print ("삐빅 에러입니당")

    
}

yang(yang1: 3, yang2: 2, yang3: -1)














/////////swich




//시험 점수를 받아서 해당 점수의 등급을 반환해주는 함수

func scoreofswitch(score: Int) -> String{
    var hac1: String = ""
    switch score {
    case 95...100:
        hac1 = "A"
    
    case 90...94:
        hac1 = "B"

    case 85...89:
        hac1 = "C"
    default:
        hac1 = "F"
    }
    return hac1
}

//grade를 받아서 point로 변환해주는 함수
func gradeofswitch(grade: String) -> Double{
    var hac: Double = 0
    switch grade {
    case "A":
        hac = 4.5
    case "B":
        hac = 4
    case "C":
        hac = 3.5
    default:
        hac = 3
    }
    return hac
}
let myscore1: Double = gradeofswitch(grade: scoreofswitch(score: 95))


//////////////////// 함수 만들기 실습
//Square, Rectangle, Circle
func hamsoosil(_ S: Double, _ L: Double, _ W: Double, _ R: Double) -> String{
    let hamsoosil1 = (S, L, W, R)
    var area: Double = 0.0
    var P: Double = 0.0
    switch hamsoosil1 {
        case (let s, 0, 0, 0):
            area = s * s
            P = 4 * s
        case (0, let l, let w, 0):
            area = l * w
            P = (2 * l) + (2 * w)
        case (0, 0, 0, let r):
            area = 3.14 * (r * r)
            P = 2 * 3.14 * r
        default:
            area = 0
            P = 0
    }
    let good: String = "area값 :" + String(area) + "P값 :" + String(P)
    return good
}

hamsoosil(2, 0, 0, 0)


//Triangle, Trapezoid
func Dohung(_ A: Double, _ B: Double, _ H: Double) -> Double{
    let Dohung1 = (A, B, H)
    var area: Double = 0.0
    switch Dohung1 {
        case (0, let b, let h):
            area = 1 / 2 * (b * h)
        case (let a, let b, let h):
            area = 1 / 2 * h * (a + b)
    default:
        area = 0
    }
    return area
}

Dohung(2, 4, 2)


//Cube, Rectnagular Solid, Circular Cylinder,  Sphere,  Cone
func Dohung11(_ S:  Double, _ R: Double, _ H: Double, _ W: Double, _ L: Double) -> Double{
    let Dohung12 = (S, R, H, W, L)
    var V: Double = 0.0
    switch Dohung12 {
        case (let s, 0, 0, 0, 0):
            V = s * s * s
        case (0, 0,  let h, let w, let l):
            V = l * w * h
        case (0, let r, let h, 0, 0):
            V = 3.14 * (r * r) * h
        case (0, let r, 0, 0, 0 ):
            V = 4 / 3 * 3.14 * (r * r * r)
        case (0, let r, let h, 0, 0):
            V = 1 / 3 * 3.14 * (r * r) * h
        default:
            V = 0
    }
    return V
}

Dohung11(2, 0, 0, 0, 0)






///////////////// where
//switch-case
//월을 입력받아 해당월의 이름을 반환해주는 함수 (ex: 1 >>> "Jan", 12 >>> "Dec", 13 >> "Error"
func monthof(month: Int) {
    switch month {
    case 1:
        print("Jan")
    case 2:
        print("Dec")
    default:
        print("Error")
    }
}
monthof(month: 1)

//년/월을 입력받아 해당 들의 마지막 날을 반환 해주는 함수(윤년 고려)

func yearmonth(year: Int, month: Int){
    switch month {
    case 1...12 where month == 2 :
        if year % 100 == 0 {
            if year % 400 == 0{
                print("윤년입니다.2월은 29일까지 있습니다.")
            }
            else{
                print("윤년이아닙니다.")
            }
        }
        else if year % 4 == 0 {
            print("윤년입니다.2월은 29일까지 있습니다.")
        }
        else {
            print("윤년이아닙니다.")
        }
    case 1...12 where month != 2 :
        let month = String(month)
        if year % 100 == 0 {
            if year % 400 == 0{
                print("윤년입니다." + month + "월은 31일까지 있습니다.")
            }
            else{
                print("윤년이아닙니다." + month + "월은 30일 까지 있습니다.")
            }
        }
        else if year % 4 == 0 {
            print("윤년입니다." + month + "월은 31일까지 있습니다.")
        }
        else {
            print("윤년이아닙니다." + month + "월은 30일 까지 있습니다.")
        }
    default :
        print("12월을 넘었습니다.")
    }
}

yearmonth(year: 2003, month: 5 )

//if문 변환
// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
func twojung1(jung1: Int, jung2: Int) -> Double{
    let nanu = (jung1, jung2)
    var nanugi: Double = 0
    switch nanu {
        case (_ , 0):
        nanugi = 0
        case (let j, let j1):
        nanugi = Double(j / j1)
        }
    return nanugi
}
twojung1(jung1: 6, jung2: 2)
//시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
//위에 했습니다


