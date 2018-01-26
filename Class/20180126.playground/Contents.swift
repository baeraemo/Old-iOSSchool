//: Playground - noun: a place where people can play

import UIKit


///연산 프로퍼티 예제
struct Point{
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect{
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.y - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}




