//
//  FeaturedTableViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {
    @IBOutlet weak var baseLayer: UIView!
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
