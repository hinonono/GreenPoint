//
//  GradientBackgroundView.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/8.
//

import UIKit

@IBDesignable
class GradientBackgroundView: UIView {
    
    private var gradientLayer: CAGradientLayer?
    
    @IBInspectable var gradientIsHidden: Bool = false
    @IBInspectable var startColor: UIColor = .clear
    @IBInspectable var endColor: UIColor = .clear
    
    @IBInspectable var startPoint: CGPoint = CGPoint (x: 0, y: 0.5)
    @IBInspectable var endPoint: CGPoint = CGPoint (x: 1, y: 0.5)
    
    override func layoutSubviews(){
        super.layoutSubviews()
        gradientLayer = CAGradientLayer()
        gradientLayer?.frame = self.bounds
        gradientLayer? .colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer?.startPoint = startPoint
        gradientLayer?.endPoint = endPoint
        gradientLayer?.isHidden = gradientIsHidden
        layer.addSublayer(gradientLayer!)
    }
}
