import UIKit

class ViewController: UIViewController {

  @IBOutlet var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
    //데스티네이션을 통해 그쪽에서 값을 가져오고 라벨에 띄운다
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let destination = segue.destination as? NextViewController else { return }
    destination.completionClosure = { stringValue in
        self.label.text = stringValue
    }
  }
  
  //이동해서 올 곳에다가 언와인드를 해준다
  @IBAction func unwind(_ sender: UIStoryboardSegue) {
    guard let sourceViewController = sender.source as? NextViewController else {
      return
    }
    
    label.text = sourceViewController.textField.text
    
  }


}

