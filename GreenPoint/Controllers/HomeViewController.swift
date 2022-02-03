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
    @IBOutlet weak var featuredCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //在首頁加入以SwiftUI寫成的輪播圖
        let childView = UIHostingController(rootView: PostView())
        addChild(childView)
        childView.view.frame = carousel.bounds
        carousel.addSubview(childView.view)
        
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featureds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "featuredCell", for: indexPath) as! FeaturedCollectionViewCell
        let featured = featureds[indexPath.item]
        
        cell.banner.image = featured.image
        cell.titleLabel.text = featured.title
        
        return cell
    }
}

