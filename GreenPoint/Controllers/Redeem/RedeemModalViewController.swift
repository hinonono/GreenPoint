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
        
        performSegue(withIdentifier: "unwindToRedeem", sender: self)
    }
}
