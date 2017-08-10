//
//  TDColorTools.swift
//  todo
//
//  Created by HuangZhen on 2017/8/8.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import Foundation
import UIKit
/*
 粉色：[UIColor colorWithRed:1.00f green:0.60f blue:0.65f alpha:1.00f];
 蓝色：[UIColor colorWithRed:0.00f green:0.72f blue:0.86f alpha:1.00f];
 红色：[UIColor colorWithRed:0.93f green:0.45f blue:0.51f alpha:1.00f];
 肉色：[UIColor colorWithRed:0.96f green:0.84f blue:0.85f alpha:1.00f];
 白蓝：[UIColor colorWithRed:0.63f green:0.73f blue:0.84f alpha:1.00f];
 浅灰：[UIColor colorWithRed:0.83f green:0.82f blue:0.83f alpha:1.00f];
 深灰：[UIColor colorWithRed:0.66f green:0.65f blue:0.65f alpha:1.00f];
 
 */
let TDPinkColor = UIColor.init(red: 1.00, green: 0.60, blue: 0.65, alpha: 1.00)
let TDBlueColor = UIColor.init(red: 0.00, green: 0.72, blue: 0.86, alpha: 1.00)
let TDRedColor = UIColor.init(red: 0.93, green: 0.45, blue: 0.51, alpha: 1.00)

class TDColorTools: NSObject {
    static func randomColor() -> UIColor {
        let color: UIColor = UIColor.init(red: (((CGFloat)((arc4random() % 256)) / 255.0)), green: (((CGFloat)((arc4random() % 256)) / 255.0)), blue: (((CGFloat)((arc4random() % 256)) / 255.0)), alpha: 1.0)
        return color
    }
    
}
