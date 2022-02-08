//
//  MemberViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import UIKit

class MemberViewController: UIViewController {
    
    @IBOutlet weak var memberSettingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        memberSettingTableView.delegate = self
        memberSettingTableView.dataSource = self
    }


}

extension MemberViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberSettings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = memberSettingTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MemeberSettingsTableViewCell
        let memberSetting = memberSettings[indexPath.item]
        
        cell.titleLabel.text = memberSetting.title
        return cell
    }
    
    
}
