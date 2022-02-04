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

}

extension FeaturedListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
