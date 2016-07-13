//
//  UIViewController_extension.swift
//  zhaoyao
//
//  Created by 闻端 on 16/7/13.
//  Copyright © 2016年 uki. All rights reserved.
//

import UIKit

extension UIViewController {
    func alert(text: String) {
        let alertVC = UIAlertController(title: "prompt", message: text, preferredStyle: .Alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertVC, animated: true, completion: nil)
    }
}
