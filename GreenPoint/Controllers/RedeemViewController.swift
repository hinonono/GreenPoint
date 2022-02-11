//
//  ViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import UIKit

class RedeemViewController: UIViewController {
    
    @IBOutlet weak var redeemCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redeemCollectionView.delegate = self
        redeemCollectionView.dataSource = self
        
        redeemCollectionView.backgroundColor = UIColor(named: "gary6")
    }
    
    @IBAction func unwindToRedeem(segue: UIStoryboardSegue) {
        
    }


}


extension RedeemViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return redeemProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = redeemCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! RedeemCollectionViewCell
        cell.productImage.image = redeemProducts[indexPath.item].productImage
        cell.categoryLabel.text = redeemProducts[indexPath.item].category
        cell.productNameLabel.text = redeemProducts[indexPath.item].productName
        cell.requirementLabel.text = String(redeemProducts[indexPath.item].requirement)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
}
