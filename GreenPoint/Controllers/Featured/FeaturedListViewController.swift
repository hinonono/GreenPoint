//
//  FeaturedListViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class FeaturedListViewController: UIViewController {
    @IBOutlet weak var featuredTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        featuredTableView.delegate = self
        featuredTableView.dataSource = self
    }
    
    @IBAction func cellPressed(_ sender: UIButton) {
        guard let vc1 = storyboard?.instantiateViewController(withIdentifier: "homeViewController") else { return }
        guard let vc3 = storyboard?.instantiateViewController(withIdentifier: "FeaturedListDetail") as? FeaturedListDetailViewController else { return }
        
        self.navigationController?.setViewControllers([vc1, self, vc3], animated: true)
        
        //計算使用者點擊了哪一個cell
        let buttonPostion = sender.convert(sender.bounds.origin, to: featuredTableView)
        if let indexPath = featuredTableView.indexPathForRow(at: buttonPostion) {
            
            //將點擊結果對應的indexpath作為數值傳入vc3的featured，用以查詢對應的文章標題、圖片
            vc3.featured = featureds[indexPath[1]]
        }
    }
    
}

extension FeaturedListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return featureds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = featuredTableView.dequeueReusableCell(withIdentifier: K.cellIdentifier.featureTableCell, for: indexPath) as! FeaturedTableViewCell
        
        let featured = featureds[indexPath.item]
        cell.banner.image = featured.image
        cell.titleLabel.text = featured.title
        cell.contentLabel.text = featured.content
        cell.dateLabel.text = featured.date
        
        return cell
    }
    
    
}
