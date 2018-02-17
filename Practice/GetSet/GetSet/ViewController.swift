//
//  ViewController.swift
//  GetSet
//
//  Created by ENDERS on 2018. 2. 6..
//  Copyright © 2018년 ENDERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let per : Person = Person()
        per.num = 77
        per.noOptional(num: per.num)
        print(per.numberUpdate)
        print(per.str)
        per.numberUpdate = 6
        
        print(per.numberUpdate)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

