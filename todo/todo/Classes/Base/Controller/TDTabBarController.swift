//
//  TDTabBarController.swift
//  todo
//
//  Created by HuangZhen on 04/07/2017.
//  Copyright © 2017 Ekko. All rights reserved.
//

import UIKit

class TDTabBarController: UITabBarController {

    override func loadView() {
        super.loadView()
        self.tabBar.barTintColor = UIColor.white
        let item :UITabBarItem = UITabBarItem.appearance()
        let selectedAttrs : [String : Any] = [NSForegroundColorAttributeName : UIColor.black]
        let normalAttrs : [String : Any] = [NSFontAttributeName : UIFont.systemFont(ofSize: 12)]
        item.setTitleTextAttributes(selectedAttrs, for: .selected)
        item.setTitleTextAttributes(normalAttrs, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAllChildVC()
        // Do any additional setup after loading the view.
    }
    
    func setupAllChildVC() {
        let mainVC : TDNavigationController = TDNavigationController.init(rootViewController:TDTaskListViewController())
        mainVC.tabBarItem.title = "Ashe"
         self.viewControllers = [mainVC]
    }

}
