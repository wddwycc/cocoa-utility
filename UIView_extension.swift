//
//  UIView_extension.swift
//  zhaoyao
//
//  Created by 闻端 on 16/7/14.
//  Copyright © 2016年 uki. All rights reserved.
//

import UIKit

extension UIView {
    func autolayoutView() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIView {
    func shake() {
        let anim = CAKeyframeAnimation( keyPath:"transform" )
        anim.values = [
            NSValue( CATransform3D: CATransform3DMakeTranslation(-5, 0, 0 ) ),
            NSValue( CATransform3D: CATransform3DMakeTranslation( 5, 0, 0 ) )
        ]
        anim.autoreverses = true
        anim.repeatCount = 2
        anim.duration = 7/100
        self.layer.addAnimation(anim, forKey: nil)
    }
    func jump() {
        transform = CGAffineTransformMakeTranslation(0, -10)
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.25, initialSpringVelocity: 1,
                                   options: .CurveEaseInOut, animations: {
                                    self.transform = CGAffineTransformIdentity
        }, completion: nil)
    }
}