//
//  Localization.swift
//  zhaoyao
//
//  Created by 闻端 on 16/7/19.
//  Copyright © 2016年 uki. All rights reserved.
//

import Foundation

func $(key: String, _ comment: String = "") -> String {
    return NSLocalizedString(key, comment: comment)
}
