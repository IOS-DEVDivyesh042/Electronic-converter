

import UIKit

class Dioderect: UIViewController {
    @IBOutlet weak var acVoltageTextField: UITextField!
    @IBOutlet weak var frequencyTextField: UITextField!
    @IBOutlet weak var loadResistanceTextField: UITextField!
    @IBOutlet weak var dcVoltageLabel: UILabel!
    @IBOutlet weak var rippleVoltageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Diode Rectifier"
        
            
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
    if let acVoltageText = acVoltageTextField.text,
       let frequencyText = frequencyTextField.text,
       let loadResistanceText = loadResistanceTextField.text,
    let acVoltage = Double(acVoltageText),
        let frequency = Double(frequencyText),
        let loadResistance = Double(loadResistanceText) {
    
    let diodeVoltageDrop = 0.7
    let vrms = acVoltage
    let dcVoltage = vrms * sqrt(2) - diodeVoltageDrop
    let rippleVoltage = vrms / (2 * frequency * 1000 * 0.1 * loadResistance) // Assuming 1000μF
    
        dcVoltageLabel.text = "DC Voltage: \(dcVoltage) V"
        rippleVoltageLabel.text = "Ripple Voltage: \(rippleVoltage) V" }
        else {
        
            dcVoltageLabel.text = "Invalid input"
            rippleVoltageLabel.text = ""
        } }
        }

   


