//
//  HomeViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {
    
    @IBOutlet weak var carousel: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let childView = UIHostingController(rootView: PostView())
        addChild(childView)
        childView.view.frame = carousel.bounds
        carousel.addSubview(childView.view)
    }
    
    
    


}
