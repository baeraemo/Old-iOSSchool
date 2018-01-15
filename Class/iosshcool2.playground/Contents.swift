//: Playground - noun: a place where people can play

import UIKit

///////각 치수 전환 함수 만들기
//1. inch to cm, cm to inch(2개)
//2. m2 to 평, 평 to m2(2개)
//3. 화씨 to 섭씨, 섭씨 to 화씨 (2개)
//4. 데이터량 (KB to MB, MB to GB) (2개)
//5. 시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경
// ex) 11320 >> 4400초

/////////////////////////inch to cm
func Tocm(inch: Double) -> Double{
    let cm = inch * 2.54
    return cm
    
}
Tocm(inch: 5)

///////////////////////cm to inch
func Toinch(cm: Double) -> Double{
    let inch = cm / 2.54
    return inch
}
Toinch(cm: 12.7)

///////////////////////m2 to 평
func toP(m2: Double) -> Double{
    let P = m2 * 0.3025
    return P
}
toP(m2: 4)

//////////////////////평 to m2
func toM(p: Double) -> Double{
    let m2 = p / 0.3025
    return m2
}
toM(p: 1.21)

//////////////////////화씨 to 섭씨
func tosub(hwa: Double) -> Double{
    let sub = (hwa - 32) /  1.8
    return sub
}
tosub(hwa: 1)

////////////////////섭씨 to 화씨
func tohwa(sub: Double) -> Double{
    let hwa = (sub * 1.8) + 32
    return hwa
}
tohwa(sub: 1)

////////////////////kb to mb
func tomb(kb: Double) -> Double{
    let mb = kb * 0.001
    return mb
    
}
tomb(kb: 7)

//////////////////mb to kb
func tokb(mb: Double) -> Double{
    let kb = mb * 1000
    return kb
}
tokb(mb: 7)

////////////////////////////////시간을 받으면 초단위로 변경 113020
func tosecond(h: Int) -> Int {
    let second = h % 100
    let min = h % 10000
    let min1 = min / 100
    let hour = h / 10000
    let time = (hour * 3600) + (min1 * 60) + second
    return time
}
tosecond(h: 113020)
