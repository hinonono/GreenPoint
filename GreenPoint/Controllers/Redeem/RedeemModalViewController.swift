//
//  RedeemModalViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/11.
//

import UIKit
import KWStepper

class RedeemModalViewController: UIViewController {
    
    @IBOutlet weak var decreasePressed: UIButton!
    @IBOutlet weak var increasePressed: UIButton!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityInTotalLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var stepper: KWStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        priceLabel.text = "2900"
        quantityLabel.text = "1"
        
        stepper = KWStepper(decrementButton: decreasePressed, incrementButton: increasePressed)
        configureStepper(min: 1, max: 10, stepper: stepper)
        
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

extension RedeemModalViewController {
    func configureStepper(min: Double, max: Double, stepper: KWStepper) {
        stepper.autoRepeat = true
        stepper.autoRepeatInterval = 0.10
        stepper.wraps = false
        stepper.minimumValue = min
        stepper.maximumValue = max
        stepper.value = 0
        stepper.incrementStepValue = 1
        stepper.decrementStepValue = 1
        
        stepper.valueChangedCallback = { stepper in
            self.quantityLabel.text = String(Int(stepper.value))
            self.quantityInTotalLabel.text = String(Int(stepper.value))
            
            let total = Double(self.priceLabel.text!)! * stepper.value
            self.totalPriceLabel.text = String(Int(total))
        }
        
        stepper.valueClamped({ stepper in
            let alert = UIAlertController(title: "已達限制", message: "每次只能兌換\(Int(stepper.minimumValue))至\(Int(stepper.maximumValue))張優惠券", preferredStyle: .alert)
            let action = UIAlertAction(title: "確認", style: .default, handler: nil)
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
        })
    }
}
