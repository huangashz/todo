//
//  TDTaskListDataSource.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDTaskListDataSource: TDBaseTableViewDataSource {
    
    @available(iOS 2.0, *)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return tableViewController!.model!.dataArray!.count
        return 10
    }
    
    @available(iOS 2.0, *)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: TDTaskListCell? = tableView.dequeueReusableCell(withIdentifier: "TDTaskListCell") as? TDTaskListCell
        if nil == cell {
            cell = TDTaskListCell.init(style: .default, reuseIdentifier: "TDTaskListCell")
        }
        cell?.textLabel?.text = "buy a pen"
        return cell!
    }
    
}
