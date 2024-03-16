
import UIKit

class VC5 : UIViewController {

    @IBOutlet weak var energyTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var millijoulesLabel: UILabel!
    @IBOutlet weak var kilojoulesLabel: UILabel!
    @IBOutlet weak var megajoulesLabel: UILabel!
    @IBOutlet weak var gigajoulesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Joule"
        
    }
    

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = energyTextField.text, let joules = Double(inputText) {
            let millijoules = joules * 1000
            let kilojoules = joules / 1000
            let megajoules = joules / 1_000_000
            let gigajoules = joules / 1_000_000_000

            resultLabel.text = "Millijoules: \(millijoules) mJ"
            millijoulesLabel.text = "Kilojoules: \(kilojoules) kJ"
            kilojoulesLabel.text = "Megajoules: \(megajoules) MJ"
            megajoulesLabel.text = "Gigajoules: \(gigajoules) GJ"
           
        } else {
            resultLabel.text = "Invalid input"
            millijoulesLabel.text = "Invalid input"
            kilojoulesLabel.text = "Invalid input"
            megajoulesLabel.text = "Invalid input"
           
        }
    }
}

