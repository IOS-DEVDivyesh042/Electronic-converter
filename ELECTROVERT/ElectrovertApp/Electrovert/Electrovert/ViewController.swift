//
//  ViewController.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    @IBOutlet weak var vv3: UIView!
    @IBOutlet weak var vv2: UIView!
    @IBOutlet weak var vv1: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    
    @IBOutlet weak var vv4: UIView!
    
    @IBOutlet weak var vv5: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        vv1.layer.transform = CATransform3DMakeScale(1.1, 0.1, 0.1)
        UIView.animate(withDuration: 1.0,animations: { [self] in
            vv1.layer.transform = CATransform3DMakeScale(1.0, 1.0,1.0)
            
        }, completion: nil)
        
        vv2.layer.transform = CATransform3DMakeScale(1.1, 0.1, 0.1)
        UIView.animate(withDuration: 1.0,animations: { [self] in
            vv2.layer.transform = CATransform3DMakeScale(1.0, 1.0,1.0)
            
        }, completion: nil)
        
        vv3.layer.transform = CATransform3DMakeScale(1.1, 0.1, 0.1)
        UIView.animate(withDuration: 1.0,animations: { [self] in
            vv3.layer.transform = CATransform3DMakeScale(1.0, 1.0,1.0)
            
        }, completion: nil)
        
        vv4.layer.transform = CATransform3DMakeScale(1.1, 0.1, 0.1)
        UIView.animate(withDuration: 1.0,animations: { [self] in
            vv4.layer.transform = CATransform3DMakeScale(1.0, 1.0,1.0)
            
        }, completion: nil)
        
        vv5.layer.transform = CATransform3DMakeScale(1.1, 0.1, 0.1)
        UIView.animate(withDuration: 1.0,animations: { [self] in
            vv5.layer.transform = CATransform3DMakeScale(1.0, 1.0,1.0)
            
        }, completion: nil)
        
        
        view1.layer.cornerRadius = 20
        view1.layer.borderWidth = 5
        view1.layer.borderColor = UIColor.orange.cgColor
        
        
        vv1.layer.cornerRadius = 5
        vv1.layer.borderColor = UIColor.orange.cgColor
        vv1.layer.borderWidth = 5
        
        vv2.layer.cornerRadius = 5
        vv2.layer.borderColor = UIColor.orange.cgColor
        vv2.layer.borderWidth = 5
        vv3.layer.borderWidth = 5
        
        vv3.layer.cornerRadius = 5
        vv3.layer.borderColor = UIColor.orange.cgColor
        vv3.layer.borderWidth = 5
        
        vv4.layer.cornerRadius = 5
        vv4.layer.borderColor = UIColor.orange.cgColor
        vv4.layer.borderWidth = 5
        
        vv5.layer.cornerRadius = 5
        vv5.layer.borderColor = UIColor.orange.cgColor
        vv5.layer.borderWidth = 5
        
        
        
        stack1.layer.cornerRadius = 20
        stack2.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func amp(_ sender: UIButton) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Ampstokva")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func dios(_ sender: UIButton) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Dioderect")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func actodc(_ sender: UIButton) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Actodc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func sphase(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Sphasevc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func tphase(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Tphase")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
}

