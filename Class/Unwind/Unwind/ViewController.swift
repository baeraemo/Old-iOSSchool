import UIKit

class ViewController: UIViewController {

  @IBOutlet var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let destination = segue.destination as? NextViewController else { return }
    destination.completionClosure = { stringValue in
        self.label.text = stringValue
    }
  }
  
  
  @IBAction func unwind(_ sender: UIStoryboardSegue) {
    guard let sourceViewController = sender.source as? NextViewController else {
      return
    }
    
    label.text = sourceViewController.textField.text
    
  }


}

