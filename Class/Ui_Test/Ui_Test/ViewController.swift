//
//  ViewController.swift
//  Ui_Test
//
//  Created by ENDERS on 2018. 1. 29..
//  Copyright © 2018년 ENDERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let views = makeView(count: 4)
        viewLink(input: views)
        viewFrame(input: views)
    }
    
    
    func makeView(count:Int) -> [UIView]
    {
        var views:[UIView] = []
        for _ in 0..<count
        {
            let newView = UIView()
            views.append(newView)
        }
        return views
    }
    
    func viewLink(input: [UIView])
    {
        for index in 0..<input.count
        {
            if index == 0
            {
                view.addSubview(input[0])
            }
            else
            {
                input[index-1].addSubview(input[index])
            }
        }
    }
    
    func viewFrame(input: [UIView])
    {
        for index in 0..<input.count
        {
            if index == 0
            {
               input[0].frame = CGRect(x: 15, y: 15, width: view.frame.size.width-30, height: view.frame.size.height-30)
            }
            else
            {
                input[index].frame = CGRect(x: 15, y: 15, width: input[index-1].frame.size.width-30, height: input[index-1].frame.size.height-30)
            }
        }
    }
    
    func viewColor(input: [UIView])
    {
        for index in 0..<input.count
        {
          var soo = arc4random_uniform(10);
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

