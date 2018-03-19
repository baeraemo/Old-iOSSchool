//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let immutableArray = Array(1...5)
print("====================")
print(immutableArray)
print("====================")
for (index,num) in immutableArray.enumerated(){
    print("====================")
    print(index,num)
    print("====================")
}

let map = immutableArray
    .enumerated()
    .map { (idx, num) -> Int in idx * num + 1}
print("====================")
print(map)
print("====================")


let filter = immutableArray
    .enumerated() // index와 value값을 만들어줌
    .map { (idx, num) -> Int in idx * num}
    .filter({ $0 & 1 == 0 })
print("====================")
print(filter)
print("====================")

let reduce = immutableArray
    .enumerated()
    .map( * ) // nil값이 아닌 것도 나온다 여기선 위에 enumerated 로 인해 나온 index값과 value 값을 곱해주는 역할
    .reduce(0, { $0 + $1} )  //초기값을 받고 $0에 계속 $1값을 누적시킨다


let array = ["1j", "2d", "22", "33"]

let m1 = array.map({ Int($0) }) //특정 조건을 걸어둠
let f1 = array.flatMap({ Int($0) }) //nil값을 안뽑는다

let m2 = array.map({ Int($0) }).first
let f2 = array.flatMap({ Int($0) }).first



print(m1)
print(f1)
print(m2)
print(f2)
