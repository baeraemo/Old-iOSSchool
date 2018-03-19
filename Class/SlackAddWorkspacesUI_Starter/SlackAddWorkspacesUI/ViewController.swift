//
//  ViewController.swift
//  SlackAddWorkspacesUI
//
//  Created by giftbot on 2018. 3. 16..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

final class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        urlTextField.becomeFirstResponder() // 키보드가 자동으로 나오게하기
        addKeyboardObserver() //실행시키기
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self) //노티 지우기
        
    }
    
    //옵저버로 키보드를 불러온다
    private func addKeyboardObserver() {
        //키보드에 관련된 정보를 따로 분류해서 저장한다
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: .main) {
            [weak self] in
            guard let userInfo = $0.userInfo,
            let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect,
            let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt
                else {
                    return
            }
            print(keyboardFrame, duration, curve)
            //키보드 사이즈보다 높게잡아서 올라오게끔 만들고 오토레아웃을 잡았으니 리셋한다
            UIView.animate(withDuration: duration, delay: 0, options: UIViewAnimationOptions(rawValue: curve), animations: {
                self?.dontKnowURLLabelBottomConstraint.constant = keyboardFrame.height + 30
                self?.view.layoutIfNeeded()
            })
        }
        
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: .main) {
            [weak self] notification in
            guard let userInfo = notification.userInfo,
                let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect,
                let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
                let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt
                else { return }
            
            UIView.animate(withDuration: duration,
                           delay: 0,
                           options: UIViewAnimationOptions(rawValue: curve),
                           animations: {
                            self?.dontKnowURLLabelBottomConstraint.constant = 30
                            self?.view.layoutIfNeeded()
            })
        }
    }
    
    // MARK: Properties
    
    @IBOutlet private weak var nextButton: UIButton!
    @IBOutlet private weak var dismissButton: UIButton!
    @IBOutlet private weak var urlTextField: UITextField!
    @IBOutlet private weak var placeholderLabel: UILabel!
    
    // Constraints
    @IBOutlet private weak var placeholderLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet private weak var dontKnowURLLabelBottomConstraint: NSLayoutConstraint!
    
    // Segue Identifier
    private let nextVCModalSegue = "NextViewControllerModalSegue"
    
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    private var didUpdateConstraints = false
    override func updateViewConstraints() {
        
        if !didUpdateConstraints {
            didUpdateConstraints = true
            
            // x 버튼과 넥스트버튼을 오토레이아웃 코딩으로 잡아주는 연습
            nextButton.translatesAutoresizingMaskIntoConstraints = false
            nextButton.topAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            nextButton.trailingAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
            
            dismissButton.translatesAutoresizingMaskIntoConstraints = false
            dismissButton.leadingAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
            dismissButton.centerYAnchor
                .constraint(equalTo: nextButton.centerYAnchor).isActive = true
        }
        

        
        super.updateViewConstraints()
    }
    
    // 이건 여기서 사용하지 않는다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? NextViewController else {return} // destination이 도착지에 대한 정보이다
        print(destVC)
    }
    
    
    //넥스트버튼을 눌렀을때 false이면 진동을 주고 false값을 반환. true이면 true값 반환
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard nextButton.isSelected else {
        vibration()
        return false
        }
        return true
    }
    
    
    // 진동
    private func vibration() {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
            [weak self] in
            DispatchQueue.main.async {
                self?.urlTextField.becomeFirstResponder()
            }
        }
    }
    
    
    //뒤로가게 할때 unwind사용함
    @IBAction private func unwind(_ sender: UIStoryboardSegue) {
        print(sender.source)
    }
    
    
    // 바로 뒤로 가기
    @IBAction func dismissBtn(_ sender: UIButton) {
       urlTextField.resignFirstResponder()
        dismiss(animated: true)
    }
    
    
    
    
}




extension ViewController : UITextFieldDelegate {
    
    //키보드에서 리턴을 눌렀을때 should가 true일때 넘어가지게 만든다
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if shouldPerformSegue(withIdentifier: nextVCModalSegue, sender: nil) {
            performSegue(withIdentifier: nextVCModalSegue, sender: nil)
        }
        return true
    }
    
    // 텍스트필드안에 기능들
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = textField.text ?? ""
        
        //replacing이 글자를 바꿔주는 역할인데 range가 시작하는곳부터 목표한곳까지를 가르치는거고 string이 해당 범위 바뀐곳에 공백이나 글씨를 넣는다
        let replaceText = (text as NSString).replacingCharacters(in: range, with: string)
        
        //replaceText가 값이 없으면 true 있으면 false  있을때 뒤에꺼 쓰기
        placeholderLabel.text = replaceText.isEmpty ? "your-url.slack.com" : ".slack.com"
        nextButton.isSelected = !replaceText.isEmpty //isEmpty는 없냐고 물어보는것 그러니까 없으면  true 있으면 false 인데 여기서는 앞에 !가 있으니까 true값을 보내주는것
        
        //텍스트필드에서 글씨가 써질때 가로 길이값을 알아내주기 위한것인데 그것을 이렇게 사용한다라고 알아두기
        let attrkey = [NSAttributedStringKey.font: textField.font!]
        let textWidthSize = (replaceText as NSString).size(withAttributes: attrkey).width
        
        
        guard textWidthSize < view.bounds.width - 120 else { return false } //120까지 못넘어가게하기 위함
        placeholderLabelLeadingConstraint.constant = textWidthSize //이거만 있으면 계속 내려감
        
        return true
    }
}


