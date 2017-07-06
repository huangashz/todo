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
        self.createModel(modelClass: TDTaskListModel.self)
        model?.load()
        self.createDelegate(delegateClass: TDTaskListDelegate.self, dataSourceClass: TDTaskListDataSource.self)
        // Do any additional setup after loading the view.
    }    

}
