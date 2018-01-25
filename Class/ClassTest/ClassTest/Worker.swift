//
//  Worker.swift
//  ClassTest
//
//  Created by ENDERS on 2018. 1. 25..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import Foundation


class Worker: Person{
    var wor:Int?
    var comper:String?
    var car: Bool?
    var isworkercar:Bool = false
    var blood: String?
    
    
    init(name:String, gender: String, major: String, wor:Int, comper:String){
        self.wor = wor
        self.comper = comper
        super.init(name: name, gender: gender, major: major)
    }
    
    convenience init(name:String, gender: String, major: String, wor:Int, comper:String, car:Bool, blood:String) {
        self.init(name: name, gender: gender, major: major, wor:wor, comper:comper)
        self.car = car
        self.blood = blood
        if car == true {
            isworkercar = true
        }
        
    }
    
}
