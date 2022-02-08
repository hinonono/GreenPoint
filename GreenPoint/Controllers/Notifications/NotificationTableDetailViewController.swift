//
//  NotificationTableDetailViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class NotificationTableDetailViewController: UIViewController {

    @IBOutlet weak var notificationListDetailScrollView: UIScrollView!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleSubtitle: UILabel!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var artitleDate: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var notificationn: Notification?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notificationListDetailScrollView.contentInsetAdjustmentBehavior = .never
        
        articleImage.image = notificationn?.image
        articleSubtitle.text = notificationn?.subtitle
        articleTitle.text = notificationn?.title
        artitleDate.text = notificationn?.date
        contentLabel.text = notificationn?.content
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        
        var insets = view.safeAreaInsets
        insets.top = 0
        notificationListDetailScrollView.contentInset = insets
    }

}
