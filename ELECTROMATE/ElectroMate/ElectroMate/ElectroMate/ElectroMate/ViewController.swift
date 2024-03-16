//
//  ViewController.swift
//  ElectroMate
//
//  Created by Manish Bhanushali on 27/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var joulbtn: UIButton!
    
    @IBOutlet weak var diodebtn: UIButton!
    
    @IBOutlet weak var ampstokva: UIButton!
    
    @IBOutlet weak var resisbtn: UIButton!
    
    @IBOutlet weak var amperbtn: UIButton!
    
    
    
    @IBOutlet weak var lblbbbb: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        joulbtn.layer.cornerRadius = 20
        amperbtn.layer.cornerRadius = 20
        ampstokva.layer.cornerRadius = 20
        resisbtn.layer.cornerRadius = 20
        diodebtn.layer.cornerRadius = 20
        
        lblbbbb.layer.cornerRadius = 20
        lblbbbb.layer.borderColor = UIColor.black.cgColor
        lblbbbb.layer.borderWidth = 5
        // Do any additional setup after loading the view.
    }

    @IBAction func amps(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Ampstokva")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func Diode(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Dioderect")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func ampe(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC2")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func resis(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC3")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func joule(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC5")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    

}

