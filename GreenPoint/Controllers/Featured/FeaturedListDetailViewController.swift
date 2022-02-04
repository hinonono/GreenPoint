//
//  FeaturedListDetailViewController.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//

import UIKit

class FeaturedListDetailViewController: UIViewController {
    
    @IBOutlet weak var featuredListDetailScrollView: UIScrollView!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleSubtitle: UILabel!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var artitleDate: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var featured: Featured?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featuredListDetailScrollView.contentInsetAdjustmentBehavior = .never
        
        articleImage.image = featured?.image
        articleSubtitle.text = featured?.subtitle
        articleTitle.text = featured?.title
        artitleDate.text = featured?.date
        contentLabel.text = featured?.content
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        
        var insets = view.safeAreaInsets
        insets.top = 0
        featuredListDetailScrollView.contentInset = insets
    }
    
}
