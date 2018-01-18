//: Playground - noun: a place where people can play

import UIKit

func googoodan(googoo: Int){
    
    var dan: Int = 1
    while dan < 10{
     
        print ("\(googoo) *  \(dan) = \(googoo * dan)")
        dan += 1
        
    }
}
googoodan(googoo: 3)

//삼각수 구하기 : 삼각수란 1~ 몇까지 더하기 이런식

func samgarsoo(soo: Int) -> Int{
    var sum = 0
    var sam = 0
    while sam <= soo{
        sum = sam + sum
        sam += 1
    }
    return sum
    
}
samgarsoo(soo: 10)

//각 자리수를 더하는 메소드
func meth(meth: Int) -> Int{
    var soo = 0
    var soo1 = 0
    var meth1 = meth
    while meth1 > 0{
        
        soo = meth1 % 10
        soo1 += soo
        meth1 /= 10
    }
    return soo1
}
meth(meth: 1234)


//숫자 리버스 함수
func remeth(re: Int) -> Int{
    var meths = re
    var smeth2: String = ""
    
    while meths > 0 {
        
        let smeth = meths % 10
        let smeth1: String = String(smeth)
        smeth2 += smeth1
        meths /= 10
    }
    let smeth3: Int = Int(smeth2)!
    return smeth3
}
remeth(re: 12345)



// 구구단을 for 문으로 바꾸기

func forgoogoodan(googoo: Int){
    
    for dan in 1...9{
        
        print ("\(googoo) *  \(dan) = \(googoo * dan)")
        
    }
}
forgoogoodan(googoo: 5)

//팩토리얼
//정수 하나를 받아서 그 수의 팩토리얼을 구하시오
//3 = 3 * 2 * 1
func fac(jung: Int) -> Int{
    var jungg = jung
    var jung2 = 1
    for _ in 1...jungg {
        let jung1 = jungg
        jung2 *= jung1
        jungg -= 1
    }
    return jung2
}

fac(jung: 3)



//알고리즘
func ibof(_ ib: Int) -> Int{
    var ib1 = ib
    var count = 0
    while ib1 != 1 {
        if ib1 % 2 == 0{
            ib1 /= 2
        }
        else {
            ib1 = (ib1 * 3) + 1
        }
        count += 1
        if count >= 500{
            return -1
        }
    }
    return count
}

ibof(999999999999999)



//


    func isHarshad(num:Int) -> Bool
    {
        var isHarshardNum = false
        if num > 0
        {
            var trempNum = num
            var sumNum = 0
            while trempNum > 0 {
                sumNum += (trempNum%10)
                trempNum /= 10
            }
            if num % sumNum == 0
            {
                isHarshardNum = true
            }
        }
        return isHarshardNum
    }
  isHarshad(num: 30)
    
    
    
    
    
    
    
    
    
    
    
// func hasha(jung: Int) -> Bool{
//    var temp:Int = jung
//    var sum: Int = 0
//
//    for _ in 1...String(jung).count
//    {
//        sum += temp%10
//        temp /= 10
//    }
//
//    if jung%sum == 0 {
//        return true
//    } else
//    {
//        return false
//    }
//
    
    
    
