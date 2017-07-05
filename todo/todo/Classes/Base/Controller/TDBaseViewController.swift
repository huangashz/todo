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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
