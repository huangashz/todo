//
//  TDTaskListCell.swift
//  todo
//
//  Created by HuangZhen on 2017/7/5.
//  Copyright © 2017年 Ekko. All rights reserved.
//

import UIKit

class TDTaskListCell: TDBaseTableViewCell {
    
    var bgView : UIView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpUI() {
        bgView = UIView.init(frame: CGRect.init(x: 10, y: 10, width: APP_SCREEN_WIDTH - 20, height: 80))
        bgView?.clipsToBounds = true
        bgView?.layer.cornerRadius = 10
        bgView?.backgroundColor = TDColorTools.randomColor()
        self.contentView .addSubview(bgView!)
    }
    
}
