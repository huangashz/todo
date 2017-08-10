//
//  TDTaskListDelegate.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDTaskListDelegate: TDBaseTableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
}
