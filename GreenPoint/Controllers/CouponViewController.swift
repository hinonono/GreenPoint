//
//  CouponViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import UIKit

class CouponViewController: UIViewController {

    @IBOutlet weak var couponSegmentedControl: UISegmentedControl!
    @IBOutlet weak var couponTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        couponTableView.delegate = self
        couponTableView.dataSource = self
        
        // 處理Segmented control 標籤變換時的事件，呼叫下方的objc func
        couponSegmentedControl.addTarget(self, action: #selector(handleSegmentChanged), for: .valueChanged)
        
        //讓tableview的底色跟原本的底色一樣
        couponTableView.backgroundColor = UIColor(named: "systemGray6")
    }
    
    var validCoupons = [
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1")
    ]
    
    var redeemedCoupons = [
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1")
    ]
    
    var invalidCoupons = [
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1"),
        Coupon(category: "萊爾富", productName: "可口可樂溜擺曲線瓶", validDate: "2020-12-31", productImage: "product1")
    ]
    
    lazy var masterCouponsArray = validCoupons

    
    // 處理Segmented control 標籤變換時的事件
    @objc fileprivate func handleSegmentChanged() {
        switch couponSegmentedControl.selectedSegmentIndex {
        case 0:
            masterCouponsArray = validCoupons
            
        case 1:
            masterCouponsArray = redeemedCoupons
            
        case 2:
            masterCouponsArray = invalidCoupons
            
        default:
            masterCouponsArray = validCoupons
        }
        
        couponTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        self.navigationController?.navigationBar.tintColor = .black
    }
}

extension CouponViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return masterCouponsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = couponTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CouponTableViewCell
        
        cell.productImage.image = masterCouponsArray[indexPath.item].productImage
        cell.categoryLabel.text = masterCouponsArray[indexPath.item].category
        cell.productNameLabel.text = masterCouponsArray[indexPath.item].productName
        cell.validDateLabel.text = masterCouponsArray[indexPath.item].validDate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //清除cell附帶的底色
        cell.backgroundColor = UIColor.clear
    }
    
}
