//
//  Coupon.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/11.
//

import UIKit

struct Coupon {
    let productImage: UIImage
    let category: String
    let productName: String
    let validDate: String
    
    init (category: String, productName: String, validDate: String, productImage: String){
        self.productImage = UIImage(named: productImage)!
        self.category = category
        self.productName = productName
        self.validDate = validDate
    }
}
