//
//  BlackToTransparentGradient.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/4.
//
//  建立一個從黑色過渡到透明的漸層class，用於放在文章背景圖片上方

import UIKit

class BlackToTransparentGradient: UIView {
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = self.layer as! CAGradientLayer
        gradientLayer.colors = [
            UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.6).cgColor,
            UIColor.init(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        ]
        backgroundColor = UIColor.clear
    }
}
