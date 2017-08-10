//
//  TDTaskListModel.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDTaskListModel: TDBaseModel {

    override func load() {
        for _ in 0 ..< 20 {
            let item = TDTaskItem.create(infoData: ["test":"tt"])
            dataArray?.append(item)
        }
    }
    
}
