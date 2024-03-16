

import UIKit

class sidemenuTblCell: UITableViewCell {

    @IBOutlet weak var imgSidemenu: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var myview : UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgSidemenu.layer.borderWidth = 0.75
        imgSidemenu.layer.borderColor = UIColor.black.cgColor
        imgSidemenu.layer.cornerRadius = 5
        myview.layer.cornerRadius = 20
        myview.layer.borderWidth = 4
        myview.layer.borderColor = UIColor.black.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }

}
