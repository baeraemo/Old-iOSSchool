//
//  ViewController.swift
//  Ui_Test
//
//  Created by ENDERS on 2018. 1. 29..
//  Copyright © 2018년 ENDERS. All rights reserved.
//
////////////////////////////////테두리 원하는 만큼 뽑아내기////////////////////////////
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let views = makeView(count: 10)
        viewLink(input: views)
        viewFrame(input: views)
    }
    
    
    func makeView(count:Int) -> [UIView]
    {
        var views:[UIView] = []
        for _ in 0..<count
        {
            let newView = UIView()
            newView.backgroundColor = viewColor(input: count)
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
    
    func viewColor(input: Int) -> UIColor
    {
//        for _ in 0..<input
//        {
            var soo = arc4random_uniform(3)+1
            soo = soo % 3
            switch soo {
                case 1:
                    return UIColor.red
                case 2:
                    return UIColor.green
                case 3:
                    return UIColor.blue
                default:
                    return UIColor.cyan
            }
//        }
    }
    
    
    
    
    /////////////////////////////////////////////////
    
    
//    func updateFrameForCollection(for list:[UIView], colum:Int) {
//        for index in 0..<list.count{
//            let col = index % colum
//            let row = index / colum
//            
//            let width:CGFloat = self.view.bounds.size.width / CGFloat(colum)
//            list[index].frame = CGRect(x: 0 + CGFloat(col) * width, y: 0 + CGFloat(row) * width, width: width, height: width)
//        }
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

