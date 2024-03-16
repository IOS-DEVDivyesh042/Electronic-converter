import UIKit

class VC1: UIViewController {

    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var microvot: UILabel!
    @IBOutlet weak var kilo: UILabel!
    @IBOutlet weak var mega: UILabel!
    @IBOutlet weak var giga: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = voltageTextField.text, let volts = Double(inputText) {
            let millivolts = volts * 1000
            let microvolts = volts * 1000000
            let kilovolts = volts / 1000
            let megavolts = volts / 1000000
            let gigavolts = volts / 1000000000

            resultLabel.text = "Millivolts: \(millivolts) mV"
            microvot.text = "Microvolts: \(microvolts) µV"
            kilo.text = "Kilovolts: \(kilovolts) kV"
            mega.text = "Megavolts: \(megavolts) MV"
            //giga.text = "Gigavolts: \(gigavolts) GV"

        } else {
            resultLabel.text = "Invalid input"
            microvot.text = "Invalid input"
            kilo.text = "Invalid input"
            mega.text = "Invalid input"
            //giga.text = "Invalid input"
        }
    }
}
