//
//  NextViewController.swift
//  SlackAddWorkspacesUI
//
//  Created by giftbot on 2018. 3. 17..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class NextViewController: UIViewController {
  
  @IBOutlet private weak var nextButton: UIButton!
  @IBOutlet private weak var emailAddressTextField: UITextField!
  @IBOutlet private weak var guidanceLabel: UILabel!
  @IBOutlet private weak var guidanceLabelBottomConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
  }
  
  private func setupUI() {
    guidanceLabel.alpha = 0.0 // 스토리보드에서 설정하지 않는 이유는 거기서 0으로 하면 볼 수가 없기 때문이다
    emailAddressTextField.becomeFirstResponder() //내려갔다가 올라오지않고 바로 키보드가 보이게한다
    }
    
}


extension NextViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text ?? ""
        //
        let replacedText = (text as NSString).replacingCharacters(in: range, with: string)
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {[weak self] in
            // 250~999 사이가 적용인데 -30설정한 스토리보드의 라벨이 998이다
            if replacedText.isEmpty {
                self?.guidanceLabelBottomConstraint.priority = UILayoutPriority(999)  // 우선순위 설정 높은순이 실행된다
                self?.guidanceLabel.alpha = 0.0
            } else {
                self?.guidanceLabelBottomConstraint.priority = .defaultLow // 제일낮은 우선순쉬
                self?.guidanceLabel.alpha = 1.0
            }
            //오토레이아웃 재설정하고 리로드 하는것
            self?.view.layoutIfNeeded()
        })
        return true
    }
}
