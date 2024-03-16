//
//  dctoac.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit

class dctoac: UIViewController {

    @IBOutlet weak var dcVoltageTextField: UITextField!
    @IBOutlet weak var inverterFrequencyTextField: UITextField!
    @IBOutlet weak var inverterEfficiencyTextField: UITextField!
    @IBOutlet weak var inverterWaveformTextField: UITextField!
    @IBOutlet weak var acVoltageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton)
    {
        if let dcVoltageText = dcVoltageTextField.text,
        let inverterFrequencyText = inverterFrequencyTextField.text,
        let inverterEfficiencyText = inverterEfficiencyTextField.text,
        let inverterWaveformText = inverterWaveformTextField.text,
        let dcVoltage = Double(dcVoltageText),
        let inverterFrequency = Double(inverterFrequencyText),
        let inverterEfficiency = Double(inverterEfficiencyText),
           let inverterWaveform = inverterWaveformText{
            let acVoltage = dcVoltage * inverterEfficiency
            acVoltageLabel.text = "AC Voltage: \(acVoltage) V,\(inverterWaveform),\(inverterFrequency) Hz"
    }
        else {
    acVoltageLabel.text = "Invalid input"
            
        }
    }
    
}



