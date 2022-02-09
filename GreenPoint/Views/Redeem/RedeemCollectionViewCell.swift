//
//  RedeemCollectionViewCell.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/9.
//

import UIKit

class RedeemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var isFavorited: UIButton!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var requirementLabel: UILabel!
    
    @IBAction func favoritedPressed(_ sender: UIButton) {
        if redeemProducts[0].isFavorited {
            redeemProducts[0].isFavorited = false
            isFavorited.setImage(UIImage(systemName: "heart"), for: .normal)
        } else {
            redeemProducts[0].isFavorited = true
            isFavorited.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
    }
}
