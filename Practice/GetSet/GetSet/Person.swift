//
//  File.swift
//  GetSet
//
//  Created by ENDERS on 2018. 2. 6..
//  Copyright © 2018년 ENDERS. All rights reserved.
//

import Foundation

class Person {
    private var number:Int?
    var num:Int?
    var str:String? = "안녕하세요"
    
    var numberUpdate:Int {
        get {
            guard let num:Int = number else {
                return 0
            }
            return num
        }
        set {
            if newValue % 2 == 0 {
                number = newValue
            }
        }
    }
    
    func noOptional(num : Int?) {
        guard let n:Int = num else { return }
        print(n)
    }
}
