//
//  ViewController.swift
//  ElectroShift
//
//  Created by Manish Bhanushali on 28/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var btn11: UIButton!
    
    
    @IBOutlet weak var btn12: UIButton!
    
    
    @IBOutlet weak var btn13: UIButton!
    
    
    @IBOutlet weak var btn14: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        btn5.layer.cornerRadius = 20
        btn11.layer.cornerRadius = 20
        btn12.layer.cornerRadius = 20
        btn13.layer.cornerRadius = 20
        btn14.layer.cornerRadius = 20
        
        
        view1.layer.cornerRadius = 20
        view1.layer.borderWidth = 4
        view1.layer.borderColor = UIColor.purple.cgColor
        
        view2.layer.borderColor = UIColor.white.cgColor
        view2.layer.cornerRadius = 30
        view2.layer.borderWidth = 4
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btn1(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Actodc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn2(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Sphasevc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn3(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Tphase")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func btn4(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC1")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func btn5(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier:"VC4" )
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    
    
    
    

}

