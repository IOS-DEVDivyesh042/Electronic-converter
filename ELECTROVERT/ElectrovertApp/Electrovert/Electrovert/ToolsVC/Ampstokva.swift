//
//  Ampstokva.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit


class Ampstokva : UIViewController {
@IBOutlet weak var ampsTextField: UITextField!
    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
        override func viewDidLoad() {
                super.viewDidLoad()
            
           
            navigationItem.title = "Amps To KVA"
            
            resultLabel.layer.borderColor = UIColor.orange.cgColor
            resultLabel.layer.cornerRadius = 20
            resultLabel.layer.borderWidth = 1
        }
@IBAction func calculateButtonTapped(_ sender: UIButton) {
if let ampsText = ampsTextField.text,
    let voltsText = voltageTextField.text,
 let amps = Double(ampsText),
   let volts = Double(voltsText)
    {
    let kVA = (amps * volts) / 1000
   resultLabel.text = "kVA: \(kVA)"
}
    else
    {
resultLabel.text = "Invalid input" }
}
    
}
