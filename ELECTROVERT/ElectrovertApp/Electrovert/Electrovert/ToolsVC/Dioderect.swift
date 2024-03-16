//
//  Dioderect.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

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
        
        dcVoltageLabel.layer.cornerRadius = 20
        dcVoltageLabel.layer.borderWidth = 1
        dcVoltageLabel.layer.borderColor = UIColor.orange.cgColor
        
        rippleVoltageLabel.layer.cornerRadius = 20
        rippleVoltageLabel.layer.borderWidth = 1
        rippleVoltageLabel.layer.borderColor = UIColor.orange.cgColor        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
    if let acVoltageText = acVoltageTextField.text,
       let frequencyText = frequencyTextField.text,
       let loadResistanceText = loadResistanceTextField.text,
    let acVoltage = Double(acVoltageText),
        let frequency = Double(frequencyText),
        let loadResistance = Double(loadResistanceText) {
    // Assuming a typical diode voltage drop of around 0.7V
    let diodeVoltageDrop = 0.7
    let vrms = acVoltage
    let dcVoltage = vrms * sqrt(2) - diodeVoltageDrop
    let rippleVoltage = vrms / (2 * frequency * 1000 * 0.1 * loadResistance) // Assuming 1000μF
    //filter capacitor
        dcVoltageLabel.text = "DC Voltage: \(dcVoltage) V"
        rippleVoltageLabel.text = "Ripple Voltage: \(rippleVoltage) V" }
        else {
        // Handle invalid input
            dcVoltageLabel.text = "Invalid input"
            rippleVoltageLabel.text = ""
        } }
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


