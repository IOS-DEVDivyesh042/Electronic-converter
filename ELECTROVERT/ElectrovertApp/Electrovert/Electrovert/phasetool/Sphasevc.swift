//
//  Sphasevc.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit

class Sphasevc: UIViewController {

    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var apparentPowerLabel: UILabel!
    @IBOutlet weak var powerFactorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Single Phase"
        powerLabel.layer.cornerRadius = 20
        powerLabel.layer.borderWidth = 1
    powerLabel.layer.borderColor = UIColor.orange.cgColor
        
        apparentPowerLabel.layer.cornerRadius = 20
        apparentPowerLabel.layer.borderWidth = 1
    apparentPowerLabel.layer.borderColor = UIColor.orange.cgColor
        
        powerFactorLabel.layer.cornerRadius = 20
        powerFactorLabel.layer.borderWidth = 1
    powerFactorLabel.layer.borderColor = UIColor.orange.cgColor

        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
    if let voltageText = voltageTextField.text,
    let currentText = currentTextField.text,
    let voltage = Double(voltageText),
    let current = Double(currentText) { let power = voltage * current
    let apparentPower = voltage * current
    let powerFactor = power / apparentPower
    powerLabel.text = "Power (W): \(power)"
    apparentPowerLabel.text = "Apparent Power (VA): \(apparentPower)"
    powerFactorLabel.text = "Power Factor: \(powerFactor)"
    } else {
     powerLabel.text = "Invalid input"
        apparentPowerLabel.text = "Invalid input"
        powerFactorLabel.text = "Invalid input"
    } }
    }

    

