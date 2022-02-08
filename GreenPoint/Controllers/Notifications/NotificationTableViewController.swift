//
//  NotificationTableViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class NotificationTableViewController: UIViewController {
    @IBOutlet weak var notificationTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        notificationTableView.delegate = self
        notificationTableView.dataSource = self
    }
    
    @IBAction func cellPressed(_ sender: UIButton) {
        guard let vc1 = storyboard?.instantiateViewController(withIdentifier: "homeViewController") else { return }
        guard let vc3 = storyboard?.instantiateViewController(withIdentifier: "notificationTableDetail") as? NotificationTableDetailViewController else { return }
        
        self.navigationController?.setViewControllers([vc1, self, vc3], animated: true)
        
        //計算使用者點擊了哪一個cell
        let buttonPostion = sender.convert(sender.bounds.origin, to: notificationTableView)
        if let indexPath = notificationTableView.indexPathForRow(at: buttonPostion) {
            
            //將點擊結果對應的indexpath作為數值傳入vc3的featured，用以查詢對應的文章標題、圖片
            vc3.notificationn = notificationss[indexPath[1]]
        }
        
    }
    
}

extension NotificationTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationss.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notificationTableView.dequeueReusableCell(withIdentifier: K.cellIdentifier.notificationTableCell, for: indexPath) as! NotificationTableViewCell
        
        let notification = notificationss[indexPath.item]
        cell.banner.image = notification.image
        cell.titleLabel.text = notification.title
        cell.contentLabel.text = notification.content
        cell.dateLabel.text = notification.date
        
        return cell
    }
    
    
}
