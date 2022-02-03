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
    @IBOutlet var featuredCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //在首頁加入以SwiftUI寫成的輪播圖
        let childView = UIHostingController(rootView: PostView())
        addChild(childView)
        childView.view.frame = carousel.bounds
        carousel.addSubview(childView.view)
        
        //Delegate設定
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
    }

}

//MARK: - 最新消息
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCell", for: indexPath) as! FeaturedCollectionViewCell
        
        cell.banner.image = UIImage(named: "grid1")
        cell.titleLabel.text = "週三好康，限量發行"
        
        return cell
    }
    
    
}

