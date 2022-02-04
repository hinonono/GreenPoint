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


let featureds = [
    Featured(image: "grid1", title: "環保集點夏日感謝祭舉辦！", subtitle: "限時活動", date: "2021.08.01", content: "綠色消費點數加碼贈，再抽加碼好禮 ，「任天堂Switch」、「百萬買對東西也可以改變世界，加入環保集點的行列，讓地球環境更美好！"),
    Featured(image: "grid2", title: "2021新竹市無人回收站智慧電池回收機設立！", subtitle: "環保消息", date: "即日起至2021.12.31", content: "新竹市政府與智慧回收業者凡立橙股份有限公司（ECOCO）攜手合作，即日起啟動「無人智慧電池回收站」，全市共設置3站，24小時回收7款廢乾電池，可同時獲得ECOCO回收點數及環保綠點，換取竹市多間合作店家優惠、消費折抵，回收一顆最少可換到2.5元的消費優惠。市長林智堅鼓勵民眾前來體驗「無人回收站」，透過「有趣又便利」的乾電池回收行動，共同打造循環經濟的智慧城市。"),
    Featured(image: "grid3", title: "拯救童年計畫：愛心捐贈活動", subtitle: "限時活動", date: "2021.08.05", content: "微客相信 每個孩子都應該享有、食物、遊戲、 受教育和被愛的權利。因此我們推動辦理拯救童年計畫以及志工的投入幫助經濟弱勢兒童或其社區及家庭 讓孩子們在教育、衛生醫療、食物、技能、生活等方面得以受到合宜的照顧與發展的機會。"),
    Featured(image: "grid4", title: "用大手拉小手溫暖孩子的心", subtitle: "環保集點 × 長爱家園育幼院", date: "2021.08.21", content: "綠點送暖，讓愛不間斷！❣️ 環保集點邀請您一起幫助 #長愛家園育幼院裡的小小天使，現在您只要透過環保集點APP捐贈綠點（100綠點=1元），就可以用行動來支持長愛，提供這群弱勢孩子們更多的照顧、其他療育課程以及社會資源等，讓他們可以真正地擁有一個家，在長愛這個大家庭健康快樂的成長。♥(´∀` )人"),
    Featured(image: "grid5", title: "綠點達人出任務：闖關拿綠點！", subtitle: "限時活動", date: "2021.09.12", content: "「全員解鎖中，等你來打卡！」 綠點達人請解鎖，只要完成每週問答任務，200綠點即時入袋。週週都有新任務，各種環保新知get，好料放送不漏接，每週任務限量發行、填完為止，還有機會抽環保精選好禮喔，等你來打卡！")
]
