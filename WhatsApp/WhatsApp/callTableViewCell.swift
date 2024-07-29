//
//  callTableViewCell.swift
//  WhatsApp
//
//  Created by vamsi on 01/05/24.
//

import UIKit

class callTableViewCell: UITableViewCell {
    @IBOutlet weak var callLinkHeaderLabel: UILabel!
    
    @IBOutlet weak var subHeadingLabel: UILabel!
    
    @IBOutlet weak var callLinkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
