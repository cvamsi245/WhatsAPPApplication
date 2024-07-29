//
//  Community1TableViewCell.swift
//  WhatsApp
//
//  Created by vamsi on 02/05/24.
//

import UIKit

class Community1TableViewCell: UITableViewCell {

    @IBOutlet weak var communityNewAddButton: UIButton!
    
    @IBOutlet weak var communityLabelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
