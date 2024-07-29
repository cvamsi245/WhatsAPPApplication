//
//  MessageTableViewCell.swift
//  WhatsApp
//
//  Created by vamsi on 03/05/24.
//

import UIKit

protocol MessageInfo: AnyObject {
    func sendingMsg(with send: [String])
}

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var MessageLabel: UILabel!
    
    
    
    //@IBOutlet weak var MessageTextField: UITextField!
    
   // var storeTextField: [String]=[]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
      /*  MessageLabel.lineBreakMode = .byTruncatingMiddle
        MessageLabel.adjustsFontSizeToFitWidth = true
        MessageLabel.frame.size.width = UIScreen.main.bounds.width
        
        MessageLabel.sizeToFit()*/
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   /* @IBAction func sendButtonAction(_ sender: UIButton) {
        let message = MessageTextField.text!
        storeTextField.append(message)
        MessageLabel.text = MessageTextField.text
       
    }*/
}
