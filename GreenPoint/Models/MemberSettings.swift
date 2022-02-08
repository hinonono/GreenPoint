//
//  MemberSettings.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/8.
//

import UIKit

struct MemberSettings {
    let title: String
    
    init(title: String) {
        self.title = title
    }
}

let memberSettings = [
    MemberSettings(title: "我的最愛"),
    MemberSettings(title: "點數查詢"),
    MemberSettings(title: "兌換紀錄"),
    MemberSettings(title: "序號輸入")
]
