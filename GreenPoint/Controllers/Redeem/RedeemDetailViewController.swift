//
//  RedeemDetailViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/10.
//

import UIKit

class RedeemDetailViewController: UIViewController {
    @IBOutlet weak var bottomBarToBottom: NSLayoutConstraint!
    @IBOutlet weak var bottomBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        
        let withOutSafeArea = self.view.safeAreaInsets
        self.bottomBarToBottom.constant = 16 + withOutSafeArea.bottom
        bottomBar.layoutIfNeeded()
    }
    

}
