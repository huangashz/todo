//
//  TDTaskListViewController.swift
//  todo
//
//  Created by HuangZhen on 04/07/2017.
//  Copyright © 2017 Ekko. All rights reserved.
//

import UIKit

class TDTaskListViewController: TDBaseTableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = APP_SCREEN_HEIGHT - APP_STATUSBAR_HEIGHT - APP_TABBAR_HEIGHT
        tableView?.frame = CGRect.init(x: 0, y: APP_STATUSBAR_HEIGHT, width: width, height: height)
        tableView?.separatorStyle = .none
        self.createModel(modelClass: TDTaskListModel.self)
        self.createDelegate(delegateClass: TDTaskListDelegate.self, dataSourceClass: TDTaskListDataSource.self)
        // Do any additional setup after loading the view.
    }    

}
