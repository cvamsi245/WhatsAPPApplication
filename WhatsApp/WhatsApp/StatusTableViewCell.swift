//
//  StatusTableViewCell.swift
//  WhatsApp
//
//  Created by vamsi on 30/04/24.
//

import UIKit

class StatusTableViewCell: UITableViewCell {
    @IBOutlet weak var statusTitle: UILabel!
    
    
    @IBOutlet weak var uploadVideo: UIButton!
    
    
    @IBOutlet weak var subHeading: UILabel!
    @IBOutlet weak var mystatusTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
