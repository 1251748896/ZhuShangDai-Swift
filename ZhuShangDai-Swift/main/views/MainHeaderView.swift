//
//  MainHeaderView.swift
//  ZhuShangDai-Swift
//
//  Created by Mac on 17/6/23.
//  Copyright © 2017年 jiangbo. All rights reserved.
//

import UIKit

class MainHeaderView: UIView {
    
//    let imagesArray = NSArray?;
    
    //对外
    let imageArray = NSArray()
    //对内
//    var scrollView = UIScrollView()
    
    //懒加载
    lazy var scrollView:UIScrollView = {
        ()->UIScrollView in
        var temp = UIScrollView()
        temp = UIScrollView.init()
        temp.isPagingEnabled = true;
        temp.backgroundColor = UIColor.white
        temp.showsVerticalScrollIndicator = false
        temp.showsHorizontalScrollIndicator = false
        return temp
        
    }()
    
    //
    let kWidth = UIScreen.main.bounds.width
    let kHeight = UIScreen.main.bounds.height
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let H = 170.0/375.0*kHeight
        let sizeW:CGFloat = kWidth*(CGFloat)(self.imageArray.count+2)
        
        //获取view 的值 尽量使用：
        /*
        CGFloat width = frame.size.width
        CGFloat height = frame.size.height
        */
        self.scrollView.frame = CGRect(x: 0, y: 0, width: rect.size.width, height: H)
        self.addSubview(self.scrollView)
        self.scrollView.contentOffset = CGPoint.init(x: kWidth, y: 0)
        self.scrollView.contentSize = CGSize.init(width: sizeW, height: rect.size.height)
        
        self.setImageViews(rec: rect)
        
        
    }
    
    
    func setImageViews(rec:CGRect) -> Void {
        
        let max = self.imageArray.count
        
        for i in stride(from: 0, to: max+2, by: 1) {
            
            //创建
            let imageV = UIImageView.init()
            imageV.frame = CGRect(x: kWidth*(CGFloat)(i), y: 0, width: kWidth, height: rec.size.height)
            imageV.isUserInteractionEnabled = true
            imageV.tag = 100 + i
            let gesture = UITapGestureRecognizer(target: self, action: Selector(("imageTapGesture:")))
            imageV.addGestureRecognizer(gesture)
            self.scrollView.addSubview(imageV)
            
            //赋值
            
            
        }
        
        
        
        
        
    }
    
    func imageTapGesture(gesture:UITapGestureRecognizer) {
        
    }
    
    

}
