//
//  Howto.swift
//  ElectroShift
//
//  Created by Manish Bhanushali on 28/10/23.
//

import UIKit

class Howto: UIViewController {
    
    
    
    
    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var usertxt: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view1.layer.cornerRadius = 10
        view1.layer.borderColor = UIColor.purple.cgColor
        view1.layer.borderWidth = 4
        
        
        view2.layer.cornerRadius = 20
        view2.layer.borderColor = UIColor.white.cgColor
        view2.layer.borderWidth = 4
        
        usertxt.layer.cornerRadius = 30
        usertxt.layer.borderColor = UIColor.orange.cgColor
        usertxt.layer.borderWidth = 4
        
        
        
        
        
    }
    
    

}
