//
//  RedeemProduct.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/9.
//

import UIKit

struct RedeemProduct {
    let productImage: UIImage
    let productName: String
    let category: String
    let isFavorited: Bool
    let requirement: Int
    
    init(productImage: String, category: String, productName: String, requirement: Int, isFavorited: Bool) {
        self.productImage = UIImage(named: productImage)!
        self.productName = productName
        self.category = category
        self.requirement = requirement
        self.isFavorited = isFavorited
    }
}

let redeemProducts = [
    RedeemProduct(productImage: "product1", category: "西湖度假村", productName: "50元門票折價券", requirement: 5000, isFavorited: false),
    RedeemProduct(productImage: "product1", category: "西湖度假村", productName: "50元門票折價券", requirement: 3000, isFavorited: false),
    RedeemProduct(productImage: "product1", category: "西湖度假村", productName: "50元門票折價券", requirement: 2000, isFavorited: false),
    RedeemProduct(productImage: "product1", category: "西湖度假村", productName: "50元門票折價券", requirement: 1000, isFavorited: false),
    RedeemProduct(productImage: "product1", category: "西湖度假村", productName: "50元門票折價券", requirement: 5000, isFavorited: false)
    
]
