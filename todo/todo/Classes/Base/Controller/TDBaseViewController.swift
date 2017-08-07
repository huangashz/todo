//
//  TDBaseViewController.swift
//  todo
//
//  Created by HuangZhen on 2017/7/3.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDBaseViewController: UIViewController {
    
    var model: TDBaseModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createModel(modelClass: AnyClass) {
        if modelClass is TDBaseModel.Type {
            model = (modelClass as! TDBaseModel.Type).init()
            model!.controller = self
        }
    }

}
