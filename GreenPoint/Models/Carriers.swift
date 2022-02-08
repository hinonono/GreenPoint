//
//  Carriers.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/8.
//

import UIKit

struct Carrier {
    let name: String
    let image: UIImage
    
    init(name: String, image:String) {
        self.name = name
        self.image = UIImage(named: image)!
    }
}

let carriers = [
    Carrier(name: "妙如的卡1", image: "card1"),
    Carrier(name: "妙如的卡2", image: "card1"),
    Carrier(name: "妙如的卡3", image: "card1"),
    Carrier(name: "妙如的卡4", image: "card1")
]
