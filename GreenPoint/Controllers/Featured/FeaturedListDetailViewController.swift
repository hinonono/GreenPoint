//
//  FeaturedListDetailViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class FeaturedListDetailViewController: UIViewController {

    @IBOutlet weak var featuredListDetailScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featuredListDetailScrollView.contentInsetAdjustmentBehavior = .never
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        
        var insets = view.safeAreaInsets
        insets.top = 0
        featuredListDetailScrollView.contentInset = insets
    }

}
