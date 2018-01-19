//: Playground - noun: a place where people can play

import UIKit


func Square(s1: Int) -> (Int, Int) {
    let A = (s1 * s1)
    let P = (s1 * 4)
    return (A, P)
}

func Rectangle(l1: Int, w1: Int) -> (Int, Int){
    let A = (l1 * w1)
    let P = (2 * l1) + (2 * w1)
    return (A, P)
}

func Circle(p1: Double, r1: Double) -> (Double, Double){
    let A = p1 * (r1 * r1)
    let C = 2 * p1 * r1
    return (A, C)
}

func Triangle(b1: Double, h1: Double) -> Double{
    let A = 1/2 * b1 * h1
    return A
}

func Trapezoid(a1: Double, b1: Double, h1: Double ) -> Double{
    let A = 1/2 * h1 * (a1 + b1)
    return A
}

func Cube(s1: Int) -> Int {
    let V = s1 * s1 * s1
    return V
}

func RectangularSolid(l1: Int, w1: Int, h1: Int) -> Int{
    let V = l1 * w1 * h1
    return V
}

func CircularCylinder(p1: Double, r1: Double, h1: Double) -> Double{
    let V = p1 * (r1 * r1) * h1
    return V
}
//////////값 지정
func Sphere(p1: Double = 3.14, r1: Double = 2) -> Double{
    let V = 4/3 * p1 * (r1 * r1 * r1)
    return V
}
func Cone(p1: Double, r1: Double, h1: Double) -> Double{
    let V = 1/3 * p1 * (r1 * r1) * h1
    return V
}
///////////////////////////////////////////////
Square(s1: 10)
Rectangle(l1: 2, w1: 3)
Circle(p1: 3.14, r1: 2)
Triangle(b1: 4, h1: 6)
Trapezoid(a1: 1, b1: 2, h1: 4)
Cube(s1: 2)
RectangularSolid(l1: 3, w1: 3, h1: 4)
CircularCylinder(p1: 3.14, r1: 2, h1: 3)
Sphere()
Cone(p1: 3.14, r1: 4, h1: 2)
