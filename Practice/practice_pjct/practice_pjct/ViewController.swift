//
//  ViewController.swift
//  practice_pjct
//
//  Created by ENDERS on 2018. 2. 1..
//  Copyright © 2018년 ENDERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selectedBtn: UIButton?
    var selectarray:[UIButton] = []
    
    
    
//    var totalselected
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectarray = []
//        let appleImage:UIImage? = UIImage(named: "apple.jpg")
        
        let bgImageView:UIImageView = UIImageView(frame: view.bounds)
        bgImageView.image = #imageLiteral(resourceName: "apple.jpg")
        bgImageView.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        bgImageView.contentMode = UIViewContentMode.scaleAspectFit
        view.addSubview(bgImageView)
        
        let imageTest:UIImageView = UIImageView(frame: CGRect(x: 50, y: 50, width: 150, height: 150))
        imageTest.image = #imageLiteral(resourceName: "banana.jpg")
        imageTest.backgroundColor = .green
//        ImageTest.contentmode = UIViewContentMode.scaleAspectFit
       view.addSubview(imageTest)
        
        
        let imageTest1:UIImageView = UIImageView(frame: CGRect(x: 250, y: 50, width: 150, height: 150))
        view.addSubview(imageTest1)
        imageTest1.image = #imageLiteral(resourceName: "banana.jpg")
        imageTest1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        imageTest1.contentMode = UIViewContentMode.scaleAspectFit
        
        
    
        let ImageTest2:UIImageView = UIImageView(frame: CGRect(x: 50, y: 550, width: 150, height: 150))
        view.addSubview(ImageTest2)
        ImageTest2.image = #imageLiteral(resourceName: "apple.jpg")
        
        let ImageTest3:UIImageView = UIImageView(frame: CGRect(x: 250, y: 550, width: 150, height: 150))
        view.addSubview(ImageTest3)
        ImageTest3.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        ImageTest3.image = #imageLiteral(resourceName: "apple.jpg")
        
        
        
        
        
        
        
        
        
        let titleLb: UILabel = UILabel(frame: CGRect(x: 0, y: 100, width: view.frame.size.width, height: 150))
        titleLb.text = "UI Test View"
        titleLb.textColor = UIColor.darkGray
        titleLb.font = UIFont.systemFont(ofSize: 45)
        titleLb.textAlignment = .center
        view.addSubview(titleLb)
        
        
        let centerTextLb: UILabel = UILabel(frame: CGRect(x: 0, y: view.frame.size.height/2 - 75, width: view.frame.size.width - 40, height: 300))
        
        centerTextLb.text =
        """
        123123
        "중간에 표시되는 텍스트"
        213131
        """
        centerTextLb.textColor = .blue
        centerTextLb.font = UIFont.systemFont(ofSize: 50)
        centerTextLb.lineBreakMode = .byWordWrapping
        centerTextLb.textAlignment = NSTextAlignment.center
        centerTextLb.numberOfLines = 0
        view.addSubview(centerTextLb)
    
        
        let logobtn1: UIButton = UIButton(type: .custom)
        
        logobtn1.frame = CGRect(x: 25, y: 25, width: 100, height: 50)
        logobtn1.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
        logobtn1.setTitleColor(.black, for: .normal)
        logobtn1.setTitleColor(.red, for: .selected)
        logobtn1.setTitle("왼쪽이다", for: .normal)
//        logobtn1.setImage(#imageLiteral(resourceName: "banana.jpg"), for: .normal)
        logobtn1.tag = 1
//        logobtn1.isSelected = true
        view.addSubview(logobtn1)
        
        
        let logobtn2: UIButton = UIButton(type: .custom)
        
        logobtn2.frame = CGRect(x: 150, y: 25, width: 100, height: 50)
        logobtn2.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
        logobtn2.setTitleColor(.black, for: .normal)
        logobtn2.setTitleColor(.red, for: .selected)
        logobtn2.setTitle("오른쪽이다", for: .normal)
        //        logobtn1.setImage(#imageLiteral(resourceName: "banana.jpg"), for: .normal)
        logobtn2.tag = 2
//        logobtn2.isSelected = true
        view.addSubview(logobtn2)
       
        
        
        let clearbtn: UIButton = UIButton(type: .custom)
        
        clearbtn.frame = CGRect(x: 300, y: 25, width: 100, height: 50)
        clearbtn.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
        clearbtn.setTitleColor(.black, for: .normal)
        clearbtn.setTitleColor(.red, for: .selected)
        clearbtn.setTitle("초기화", for: .normal)
        clearbtn.tag = 3
        view.addSubview(clearbtn)
        
    }

    @objc func logoEventTouchUpInside(_ sender: UIButton){
        
        
        if sender.tag == 3
        {
            for item in selectarray
            {
                item.isSelected = false
            }
            
            selectarray = []
        }else
        {
            if  sender.isSelected == false {
                sender.isSelected = true // 누른번호 키기
                //selectedBtn?.isSelected = false  //켜져있는번호를 꺼주기
                selectedBtn = sender // 유지시키기
                selectarray.append(sender)
                
            }else
            {
                sender.isSelected = false
                
                let index = selectarray.index(of: sender)!
                selectarray.remove(at: index)
            }
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

