//
//  NotificationTableViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    @IBOutlet weak var baseLayer: UIView!
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!

    override public func awakeFromNib() {
        super.awakeFromNib()
        
        baseLayer.layer.cornerRadius = 8
        baseLayer.layer.cornerCurve = .continuous
        baseLayer.layer.shadowOpacity = 0.15
        baseLayer.layer.shadowOffset = CGSize(width: 0, height: 5)
        baseLayer.layer.shadowRadius = 10
        baseLayer.layer.masksToBounds = false
        
        banner.layer.cornerRadius = 8
        banner.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
