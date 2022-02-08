//
//  CarrierTableViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/8.
//

import UIKit

class CarrierTableViewCell: UITableViewCell {
    @IBOutlet weak var carrierImage: UIImageView!
    @IBOutlet weak var carrierNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
