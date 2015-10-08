//
//  MainTabBarController.swift
//  新浪微博3
//
//  Created by Maggie on 15/10/8.
//  Copyright © 2015年 Maggie. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    @IBOutlet weak var mainTabBar: MainTabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
       addChildViewControllers()
        mainTabBar.composeButton.addTarget(self, action: "composeDidClick", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func composeDidClick(){
        print(__FUNCTION__)
    }

    func addChildViewControllers(){
        addchildViewController("Home","首页", "tabbar_home")
        addchildViewController("Message","消息", "tabbar_message_center")
        addchildViewController("Discovery","发现", "tabbar_discover")
        addchildViewController("Profile","我", "tabbar_profile")
        
    }
    //添加单视图控制器
    func addchildViewController(sbName: String, _ title: String, _ imageName: String){
        let sb = UIStoryboard(name:sbName, bundle: nil)
        
        // as? 指定为一个 可选类型的 导航视图的控制器
        
        // as!强制指定为一个有值的对象
        let nav = sb.instantiateInitialViewController() as! UINavigationController
        
        //设置title
        //        nav.title = "首页"
        //指定可以显示的视图控制器的title
        nav.topViewController?.title = title
        //添加图片
        nav.tabBarItem.image = UIImage(named: imageName)
        //        nav.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        addChildViewController(nav)
    }

  
}
