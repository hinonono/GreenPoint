//
//  CarrierViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import UIKit
import SwiftUI

class CarrierViewController: UIViewController {

    @IBOutlet weak var carrierTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carrierTableView.delegate = self
        carrierTableView.dataSource = self
        
        //讓tableview的底色跟原本的底色一樣
        carrierTableView.backgroundColor = UIColor(named: "systemGray6")
    }

    @IBSegueAction func carrierDetailView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: CarrierDetailView(toggleIsOn: true))
    }
    
}

extension CarrierViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carriers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = carrierTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarrierTableViewCell
        cell.carrierNameLabel.text = carriers[indexPath.item].name
        cell.carrierImage.image = carriers[indexPath.item].image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //清除cell附帶的底色
        cell.backgroundColor = UIColor.clear
    }
    
    
}
