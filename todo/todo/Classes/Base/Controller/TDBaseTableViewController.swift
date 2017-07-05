//
//  TDBaseTableViewController.swift
//  todo
//
//  Created by HuangZhen on 04/07/2017.
//  Copyright © 2017 Ekko. All rights reserved.
//

import UIKit

class TDBaseTableViewController: TDBaseViewController {

    var tableView: UITableView?
    var delegate: TDBaseTableViewDelegate?
    var dataSource: TDBaseTableViewDataSource?
    
    override func loadView() {
        super.loadView()
        tableView = UITableView.init(frame: view.bounds, style: .plain)
        view.addSubview(tableView!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createDelegate(delegateClass: AnyClass, dataSourceClass: AnyClass) {
        if delegateClass is TDBaseTableViewDelegate.Type {
            delegate = (delegateClass as! TDBaseTableViewDelegate.Type).init()
            tableView!.delegate = delegate
            delegate!.tableViewController = self
        }
        
        if dataSourceClass is TDBaseTableViewDataSource.Type {
            dataSource = (dataSourceClass as! TDBaseTableViewDataSource.Type).init()
            tableView!.dataSource = dataSource
            dataSource!.tableViewController = self
        }
    }
    

}
