//
//  Featured.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/3.
//

import UIKit

struct Featured {
    let image: UIImage
    let title: String
    
    init(image: UIImage!, title: String!){
        self.image = image
        self.title = title
    }
}


let featureds = [
    Featured(image: UIImage(named: "grid1"), title: "環保集點夏日感謝祭舉辦！"),
    Featured(image: UIImage(named: "grid2"), title: "2021年新竹市無人回收站電池回收"),
    Featured(image: UIImage(named: "grid3"), title: "公益捐贈行動，愛心不落人間"),
    Featured(image: UIImage(named: "grid4"), title: "用大手拉小手，溫暖孩子的心"),
    Featured(image: UIImage(named: "grid5"), title: "綠點達人出任務，闖關拿綠點！")
]
