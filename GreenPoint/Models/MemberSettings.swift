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

let personalInfoSettings = [
    MemberSettings(title: "環保集點 會員卡面更改"),
    MemberSettings(title: "聯絡信箱"),
    MemberSettings(title: "性別"),
    MemberSettings(title: "出生年"),
    MemberSettings(title: "居住地"),
    MemberSettings(title: "更改密碼")
]

let preferenceSettings = [
    MemberSettings(title: "通知"),
    MemberSettings(title: "字體大小"),
    MemberSettings(title: "快速登入"),
    MemberSettings(title: "深色模式")
]

let knowMoreSettings = [
    MemberSettings(title: "環保集點 官網"),
    MemberSettings(title: "官方粉絲專頁"),
    MemberSettings(title: "關於 環保集點"),
    MemberSettings(title: "常見問題"),
    MemberSettings(title: "合作單位")
]
