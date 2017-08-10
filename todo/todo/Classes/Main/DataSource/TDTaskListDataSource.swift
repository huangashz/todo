//
//  TDTaskListDataSource.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

let TaskCellIdentifier = "TaskCellIdentifier"

class TDTaskListDataSource: TDBaseTableViewDataSource {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewController!.model!.dataArray!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: TaskCellIdentifier)
        if nil == cell {
            cell = TDTaskListCell.init(style: .default, reuseIdentifier: TaskCellIdentifier)
        }
        let item = tableViewController!.model!.dataArray![indexPath.row] as! TDTaskItem
        return cell!
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
}
