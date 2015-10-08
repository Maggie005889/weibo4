//
//  MainTabBar.swift
//  新浪微博3
//
//  Created by Maggie on 15/10/8.
//  Copyright © 2015年 Maggie. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        

        var index: CGFloat = 0
        let w = UIScreen.mainScreen().bounds.width / 5
        let h = self.bounds.height
        let frame = CGRectMake(0, 0, w, h)
        for view in subviews {
            if view is UIControl && !(view is UIButton){
                view.frame = CGRectOffset(frame, index * w, 0)
                //递增index
                if index == 1 {
                    index++
                }
                index++
            }
        }
        //设置撰写按钮的位置
        composeButton.frame = CGRectOffset(frame, 2 * w, 0)

        }
        
        
        
        
        
        
        
        
    
    
    lazy var composeButton:UIButton = {
        
        let btn = UIButton(type:UIButtonType.Custom)
        btn.setBackgroundImage(UIImage(named:  "tabbar_compose_button"), forState: UIControlState.Normal)
        btn.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        btn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        btn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
//        self.addSbuview(btn)
        self.addSubview(btn)
            return btn
        
        
    }()
    
}
