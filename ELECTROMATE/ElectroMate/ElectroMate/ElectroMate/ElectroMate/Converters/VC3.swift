import UIKit

class VC3 : UIViewController {

    @IBOutlet weak var resistanceTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var milliohmsLabel: UILabel!
    @IBOutlet weak var kiloohmsLabel: UILabel!
    @IBOutlet weak var megaohmsLabel: UILabel!
    @IBOutlet weak var gigaohmsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Resistance"
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = resistanceTextField.text, let ohms = Double(inputText) {
            let milliohms = ohms * 1000
            let kiloohms = ohms / 1000
            let megaohms = ohms / 1_000_000
            let gigaohms = ohms / 1_000_000_000

            resultLabel.text = "Milliohms: \(milliohms) mΩ"
            milliohmsLabel.text = "Kiloohms: \(kiloohms) kΩ"
            kiloohmsLabel.text = "Megaohms: \(megaohms) MΩ"
            megaohmsLabel.text = "Gigaohms: \(gigaohms) GΩ"
           
        } else {
            resultLabel.text = "Invalid input"
            milliohmsLabel.text = "Invalid input"
            kiloohmsLabel.text = "Invalid input"
            megaohmsLabel.text = "Invalid input"
            
        }
    }
}
