//
//  Actodc.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit

class Actodc: UIViewController {

    @IBOutlet weak var acVoltageTextField: UITextField!
    @IBOutlet weak var frequencyTextField: UITextField!
    @IBOutlet weak var diodeVoltageDropTextField: UITextField!
    @IBOutlet weak var capacitorValueTextField: UITextField!
    @IBOutlet weak var loadResistanceTextField: UITextField!
    @IBOutlet weak var dcVoltageLabel: UILabel!
    @IBOutlet weak var rippleVoltageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "AC To DC"
            dcVoltageLabel.layer.cornerRadius = 20
            dcVoltageLabel.layer.borderWidth = 1
        dcVoltageLabel.layer.borderColor = UIColor.orange.cgColor
        
        
        rippleVoltageLabel.layer.cornerRadius = 20
        rippleVoltageLabel.layer.borderWidth = 1
    rippleVoltageLabel.layer.borderColor = UIColor.orange.cgColor
        
        
        
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton)
    {
    if let acVoltageText = acVoltageTextField.text,
    let frequencyText = frequencyTextField.text,
    let diodeVoltageDropText = diodeVoltageDropTextField.text,
    let capacitorValueText = capacitorValueTextField.text,
    let loadResistanceText = loadResistanceTextField.text,
    let acVoltage = Double(acVoltageText),
    let frequency = Double(frequencyText),
    let diodeVoltageDrop = Double(diodeVoltageDropText),
    let capacitorValue = Double(capacitorValueText),
    let loadResistance = Double(loadResistanceText)
    {
    let vrms = acVoltage
    let dcVoltage = vrms * sqrt(2) - diodeVoltageDrop
    let rippleVoltage = vrms / (2 * frequency * capacitorValue * loadResistance)
    dcVoltageLabel.text = "DC Voltage: \(dcVoltage) V"
    rippleVoltageLabel.text = "Ripple Voltage: \(rippleVoltage) V"
    }
        else
        {
    // Handle invalid input
            dcVoltageLabel.text = "Invalid input"
            rippleVoltageLabel.text = ""
    } }
    }

   


