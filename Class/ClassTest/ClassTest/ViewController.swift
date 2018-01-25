//
//  ViewController.swift
//  ClassTest
//
//  Created by youngmin joo on 2018. 1. 22..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let mazingaZ = Worker(name: "마징가Z", gender: "남", major: "초딩", wor:0, comper:"초등학교")
        mazingaZ.setSubjects(subjectDic: ["언어":9, "국어":80,"산수":100,"슬기로운생활":50,"기술":100,"싸움":99])
        
        let lazenca = Worker(name: "라젠카", gender: "여", major: "고딩", wor:0, comper:"고등학교")
        lazenca.setSubjects(subjectDic: ["언어":50,"수학":80,"도덕":90,"과학":100,"싸움":87])
        
        let atom = Worker(name: "아톰", gender: "남", major: "고딩", wor: 0, comper: "고등학교", car: false, blood: "A형")
        atom.setSubjects(subjectDic: ["언어":100,"수학":100,"도덕":90,"과학":70,"싸움":50])
        
        let tae = Worker(name: "태웅", gender: "남", major: "직딩", wor: 250, comper: "연신내", car: true, blood: "O형")
        
        
        let cal:Calculator = Calculator()
        cal.average(student: mazingaZ)
        
        cal.average(student: lazenca)
        
        cal.jjang(mazingaZ, lazenca, atom)
        
        cal.geniusHighSchool(stu1: lazenca, stu2: atom)
        
        cal.carperson(atom, tae)
        
        cal.comper(atom, tae)
        
        cal.blood([mazingaZ, lazenca, atom, tae])
        
        cal.bloodO(mazingaZ, lazenca, atom, tae)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

