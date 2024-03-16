
import UIKit

class VC2 : UIViewController {

    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var milliamperesLabel: UILabel!
    @IBOutlet weak var microamperesLabel: UILabel!
    @IBOutlet weak var kiloamperesLabel: UILabel!
    @IBOutlet weak var megaamperesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Ampere"
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = currentTextField.text, let amperes = Double(inputText) {
            let milliamperes = amperes * 1000
            let microamperes = amperes * 1_000_000
            let kiloamperes = amperes / 1_000
            let megaamperes = amperes / 1_000_000

            resultLabel.text = "Milliamperes: \(milliamperes) mA"
            milliamperesLabel.text = "Microamperes: \(microamperes) µA"
            microamperesLabel.text = "Kiloamperes: \(kiloamperes) kA"
            kiloamperesLabel.text = "Megaamperes: \(megaamperes) MA"
           
        } else {
            resultLabel.text = "Invalid input"
            milliamperesLabel.text = "Invalid input"
            microamperesLabel.text = "Invalid input"
            kiloamperesLabel.text = "Invalid input"
           
        }
    }
}
