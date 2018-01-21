//
//  ViewController.swift
//  xx
//
//  Created by ENDERS on 2018. 1. 12..
//  Copyright © 2018년 TW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     
    @IBOutlet weak var firstnumdisplay: UILabel!
    @IBOutlet weak var secondnumdisplay: UILabel!
    @IBOutlet weak var resultdisplay: UILabel!
    
    var operationtemp: String = ""
    
    var firstnum: String = "0"
    var secondnum: String = "0"
    var resultnum: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Action Method
    @IBAction func clickdidnumber(_ sender: UIButton) {
        //버튼에 있는 텍스트 가져오기
        let numberstr: String = sender.titleLabel!.text!
        //연산자 유무 확인
        if operationtemp.count > 0
        {
            
//            let seconddisplay = secondnumdisplay.text!
            if  secondnum == "0"
            {
                secondnum = numberstr
            }else
            {
                secondnum = secondnum + numberstr
                
            }
            secondnumdisplay.text = secondnum
        }
        else
        {
//            let firstdisplay = firstnumdisplay.text!
            
            if firstnum == "0"
            {
//              firstnumdisplay.text = numberstr
//              리셋 디스플레이
                resetdiplay()
                firstnum = numberstr
            }else
            {
//              firstnumdisplay.text = firstnumdisplay.text + numberstr
                firstnum = firstnum + numberstr
            }
            firstnumdisplay.text = firstnum
        }
    }
    @IBAction func clickdidcancel(_ sender: UIButton) {
        print("can")
 //       firstnumdisplay.text = "0"
 //       secondnumdisplay.text = "0"
 //       resultdisplay.text = "0"
 //       operationtemp = ""
        resetdiplay()
        resetdata()
    }

    @IBAction func clickdidresult(_ sender: UIButton) {
 //       let secondnumstr = secondnumdisplay.text!
        if secondnum != "0"
        {
            let firstnumtemp: Int = Int(firstnum)!
            let secondnumtemp: Int = Int(secondnum)!
            let operation: String = operationtemp
            
            let resultnum = calculation(firstnum: firstnumtemp, operation: operation, secondnum: secondnumtemp)
            resultdisplay.text = String(resultnum)
            resetdata()
        }
    }
    
    @IBAction func clickdidoperation(_ sender: UIButton) {
        let operstr = sender.titleLabel!.text!
//        let firstdisplay = firstnumdisplay.text!
        if firstnum != "0"
        {
            operationtemp = operstr
            changecolor(by: operstr)
        }
    }
    //MARK: - Private method
    
    /// 연산 함수
    /// 두수를 연산자에 따라 연산하고 결과값을 리턴해준다.
    ///
    /// parameters:
    ///  -firstnum : 첫번째 디스플레이에 표시된 숫자
    ///  -operation : 연산을 위한 연산자
    ///  -secondnum : 두번째 디스플레이에 표시된 숫자
    ///  -returns : 연산의 결과값
    private func calculation(firstnum: Int, operation: String, secondnum: Int) -> Int
    {
        var resultnum: Int = 0
        
        switch operation {
        case "+":
            print("더하기 연산")
            resultnum = firstnum + secondnum
        case "-":
            print("빼기 연산")
            resultnum = firstnum - secondnum
        case "x":
            print("곱하기 연산")
            resultnum = firstnum * secondnum
        case "/":
            print("나누기 연산")
            resultnum = firstnum / secondnum
        default:
            print("여기 걸리면 에러임!")
        }

        return resultnum
    }
    //데이터 리셋
    private func resetdata()
    {
        firstnum = "0"
        secondnum = "0"
        resultnum = "0"
        operationtemp = ""
    }
    //ui리셋
    private func resetdiplay()
    {
        firstnumdisplay.text = "0"
        secondnumdisplay.text = "0"
        resultdisplay.text = "0"
        operationtemp = ""
        changelabelbg(color: .cyan)
    }
    private func changecolor(by operation: String)
    {
        var color: UIColor
        switch operation {
        case "+":
            color = .red
        case "-":
            color = .yellow
        case "x":
            color = .green
        case "/":
            color = .blue
        default:
            color = .white
            print("여기 걸리면 에러임!")
        }
        
        changelabelbg(color: color)
    }
    
    private func changelabelbg(color: UIColor)
    {
        firstnumdisplay.backgroundColor = color
        secondnumdisplay.backgroundColor = color
        resultdisplay.backgroundColor = color
    }
}
