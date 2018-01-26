//
//  ProductListCell.swift
//  ZhuShangDai-Swift
//
//  Created by Mac on 17/6/23.
//  Copyright © 2017年 jiangbo. All rights reserved.
//

import UIKit

class ProductListCell: UITableViewCell {
    
    
    //声明全局属性
    var MtitleLabel:UILabel?
    var subTitleLabel:UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style:UITableViewCellStyle, reuseIdentifier:String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUI();
    }
    
    func setUI() -> Void {
        //调用属性
        self.MtitleLabel = UILabel.init();
        self.MtitleLabel?.frame = CGRect(x: 10, y: 10, width: 150, height: 24);
        self.MtitleLabel?.font = UIFont.systemFont(ofSize: 16);
        self.contentView.addSubview(self.MtitleLabel!);
        
        self.subTitleLabel = UILabel.init();
        self.subTitleLabel?.frame = CGRect(x: 160, y: 10, width: 100, height: 24);
        self.subTitleLabel?.font = UIFont.systemFont(ofSize: 13);
        self.contentView.addSubview(self.subTitleLabel!);
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
