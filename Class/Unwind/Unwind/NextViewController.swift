import UIKit

class NextViewController: UIViewController {
  
  @IBOutlet var textField: UITextField!
  @IBOutlet var commentTextField: UITextField!
  
  var completionClosure: ((String) -> Void)?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    NotificationCenter.default.addObserver(
      forName: NSNotification.Name.UIKeyboardWillShow,
      object: nil,
      queue: nil,
      using: { notification -> Void in
        guard let userInfo = notification.userInfo else { return }
        guard let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect else { return }
        
        self.commentTextField.frame.origin.y -= keyboardFrame.size.height
      })
    
    NotificationCenter.default.addObserver(
      forName: .UIKeyboardWillHide,
      object: nil,
      queue: nil,
      using: { notification in
        guard let userInfo = notification.userInfo else { return }
        guard let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect else { return }
        
        self.commentTextField.frame.origin.y += keyboardFrame.size.height
      })
  }
  
  @IBAction func didTapDoneButton(_ sender: UIButton) {
    guard let closure = completionClosure else { return }
    closure(textField.text!)
    self.dismiss(animated: true, completion: nil)
  }
  
}
