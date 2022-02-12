//
//  CouponDetailViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/11.
//

import UIKit

class CouponDetailViewController: UIViewController {

    @IBOutlet weak var productImage: CustomImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var validDateLabel: UILabel!
    @IBOutlet weak var serialNumberLabel: UILabel!
    
    @IBOutlet weak var barcodeImage1: UIImageView!
    @IBOutlet weak var barcodeImage2: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
    }

    @IBAction func copyButtonPressed(_ sender: Any) {
        
        //顯示alert
        let alert = UIAlertController(title: "複製成功", message: "兌換序號已複製至剪貼簿", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確定", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}