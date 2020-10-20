//
//  CustomCellTableViewCell.swift
//  PhoneBook
//
//  Created by a_sid on 20.10.2020.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var characterLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func moreInfoButtonTapped(_ sender: UIButton) {
    }
    
}
