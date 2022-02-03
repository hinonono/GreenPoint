//
//  FeaturedCollectionViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/3.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    @IBOutlet var banner: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        super.layoutIfNeeded()
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
