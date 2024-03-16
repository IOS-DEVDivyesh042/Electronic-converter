//
//  UserGuide.swift
//  ElectroMate
//
//  Created by Manish Bhanushali on 27/10/23.
//

import UIKit

class UserGuide: UIViewController {

    @IBOutlet weak var userddd: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        userddd.layer.cornerRadius = 20
        userddd.layer.borderColor = UIColor.black.cgColor
        userddd.layer.borderWidth = 5
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
