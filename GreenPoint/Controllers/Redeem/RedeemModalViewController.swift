//
//  RedeemModalViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/11.
//

import UIKit

class RedeemModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func dismissPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func redeemPressed(_ sender: UIButton) {
//        print("Redeem button was tapped.")
        
        //顯示alert
        let alert = UIAlertController(title: "兌換成功", message: "已成功兌換商品", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "我的優惠券", style: .default) {_ in
            self.performSegue(withIdentifier: "unwindToCoupon", sender: self)
        }
        
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "確定", style: .cancel) {_ in
            self.performSegue(withIdentifier: "unwindToRedeem", sender: self)
        }
        
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
        
    }
}
