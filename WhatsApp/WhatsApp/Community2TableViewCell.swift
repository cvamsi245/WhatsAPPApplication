//
//  Community2TableViewCell.swift
//  WhatsApp
//
//  Created by vamsi on 02/05/24.
//

import UIKit

class Community2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var communityProfileName: UILabel!
    @IBOutlet weak var communityProfileImage: UIImageView!
    @IBOutlet weak var communityButton: UIButton!
    
    @IBOutlet weak var AnnouncementLabel: UILabel!
    
    @IBOutlet weak var communityspeaker: UIButton!
    
    @IBOutlet weak var announcementsMessages: UILabel!
    
    @IBOutlet weak var buttonViewAll: UIButton!
    
    @IBOutlet weak var viewAllLabelName: UILabel!
    
    @IBOutlet weak var viewAllSymbol: UIButton!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
    
    
