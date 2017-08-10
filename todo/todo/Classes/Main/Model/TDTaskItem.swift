//
//  TDTaskItem.swift
//  todo
//
//  Created by HuangZhen on 06/07/2017.
//  Copyright © 2017 Ekko. All rights reserved.
//

import UIKit

class TDTaskItem: NSObject {
    
    var title: String?
    
    static func create(infoData: Dictionary<String, Any>) -> TDTaskItem {
        let item = TDTaskItem()
        item.title = "i am title"
        return item
    }
}
