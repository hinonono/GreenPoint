//
//  FeaturedCollectionViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/3.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var baseLayer: UIView!
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    override public func layoutIfNeeded() {
        super.layoutIfNeeded()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        layer.shadowOpacity = 0.15
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.masksToBounds = false
        layer.cornerRadius = 8
        layer.cornerCurve = .continuous
        
    }
    
    override public func prepareForReuse() {
        super.prepareForReuse()
    }
}
