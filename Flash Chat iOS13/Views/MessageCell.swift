//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Javier Heisecke on 2021-05-06.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var messageBox: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBox.layer.cornerRadius = messageBox.frame.size.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
