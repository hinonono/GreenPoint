//
//  Notification.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

struct Notification {
    let image: UIImage
    let title: String
    let subtitle: String
    let date: String
    let content: String
    
    init(image: String, title: String, subtitle: String, date: String, content: String){
        self.image = UIImage(named: image)!
        self.title = title
        self.subtitle = subtitle
        self.date = date
        self.content = content
    }
}

let notificationss = [
    Notification(image: "grid6", title: "系統維修", subtitle: "定期維護", date: "05.27 08:30 - 05.27 15:30", content: "為提供親愛的會員們更完善的使用體驗，環保集點將進行系統安全性更新作業；為此，環保集點團隊預計於2021/05/27(四)進行作業，時間為08:30至15:30。在作業期間，我們將暫停環保集點「會員平臺」、「APP」、「官方網站」及「商品兌換」等所有服務(含瀏覽與操作)，大眾運輸與綠色消費的「集點」服務則不受影響！若提前更新維運完成，將不再另行公告，如有任何需要協助的地方，歡迎洽詢環保集點客服中心，電話專線：02-2651-9502 / 客服信箱：office@greenpoint.org.tw。感謝大家的支持與愛護，為提供更安全&完善的使用體驗，環保集點平臺將定期進行維護作業，如造成不便敬請見諒！"),
    Notification(image: "grid6", title: "系統維修", subtitle: "定期維護", date: "05.27 08:30 - 05.27 15:30", content: "為提供親愛的會員們更完善的使用體驗，環保集點將進行系統安全性更新作業；為此，環保集點團隊預計於2021/05/27(四)進行作業，時間為08:30至15:30。在作業期間，我們將暫停環保集點「會員平臺」、「APP」、「官方網站」及「商品兌換」等所有服務(含瀏覽與操作)，大眾運輸與綠色消費的「集點」服務則不受影響！若提前更新維運完成，將不再另行公告，如有任何需要協助的地方，歡迎洽詢環保集點客服中心，電話專線：02-2651-9502 / 客服信箱：office@greenpoint.org.tw。感謝大家的支持與愛護，為提供更安全&完善的使用體驗，環保集點平臺將定期進行維護作業，如造成不便敬請見諒！"),
    Notification(image: "grid6", title: "系統維修", subtitle: "定期維護", date: "05.27 08:30 - 05.27 15:30", content: "為提供親愛的會員們更完善的使用體驗，環保集點將進行系統安全性更新作業；為此，環保集點團隊預計於2021/05/27(四)進行作業，時間為08:30至15:30。在作業期間，我們將暫停環保集點「會員平臺」、「APP」、「官方網站」及「商品兌換」等所有服務(含瀏覽與操作)，大眾運輸與綠色消費的「集點」服務則不受影響！若提前更新維運完成，將不再另行公告，如有任何需要協助的地方，歡迎洽詢環保集點客服中心，電話專線：02-2651-9502 / 客服信箱：office@greenpoint.org.tw。感謝大家的支持與愛護，為提供更安全&完善的使用體驗，環保集點平臺將定期進行維護作業，如造成不便敬請見諒！")
]
