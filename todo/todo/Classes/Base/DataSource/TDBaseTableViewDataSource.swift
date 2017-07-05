//
//  TDBaseTableViewDataSource.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDBaseTableViewDataSource: NSObject, UITableViewDataSource {
    
    var tableViewController: TDBaseTableViewController?
    
    required override init() {
        super.init()
    }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return tableViewController!.model!.dataArray!.count
        return 10
    }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "CellIdent")
        if nil == cell {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "CellIdent")
        }
        cell.textLabel?.text = "Default Title EKKO"
        return cell
    }
    

}
