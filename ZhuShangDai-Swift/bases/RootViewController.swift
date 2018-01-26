//
//  RootViewController.swift
//  ZhuShangDai-Swift
//
//  Created by Mac on 17/6/21.
//  Copyright © 2017年 jiangbo. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //框架
        let mainVC = MainViewController();
        let licaiVC = LiCaiListViewController();
        let userCenterVC = UserCenterViewController();
        let moreVC = MoreViewController();
        
        let mainNav = UINavigationController.init(rootViewController: mainVC);
        let licaiNav = UINavigationController.init(rootViewController: licaiVC);
        let userCenterNav = UINavigationController.init(rootViewController: userCenterVC);
        let moreNav = UINavigationController.init(rootViewController: moreVC);
        
        let navs = [mainNav,licaiNav,userCenterNav,moreNav];
        self.viewControllers = navs;
        
        //底部文字和图片
        let imageArrayNormal = ["mainNormal.png","manageMoneyNormal.png","personalNormal.png","moreNormal.png"];
        let imageArraySelected = ["mainHigh.png","manageMoneyHigh.png","personalHigh.png","moreHigh.png"];
        
        let titles = ["首页","理财","我的","更多"];
        

        
        /*
         //swift3.0开始，不允许使用for类型的循环了
        var i : Int;
         
        for  i = 0; i < titles.count; i++ {
            let nav = navs[i];
            let image = UIImage.init(named: imageArrayNormal[i]);
            let imageSelected = UIImage.init(named: imageSelected[i]);
            let tit = titles[i];
            
            let item = UITabBarItem.init(title: tit, image: image, selectedImage: imageSelected);
        }
        */
        
        
        //stride(from: 0, to: titles.count, by: 1)
        //这个函数表示：从开始遍历到titles.count，其中：包含0，但不包含titles.count。即：i = 0 ~ titles.count-1;
        //第三个参数by:表示每次我步数，类似于c语言for循环的 i+ = 1;
        
        for i in stride(from: 0, to: titles.count, by: 1) {
            //取值
            let nav = navs[i];
            let image = UIImage.init(named: imageArrayNormal[i]);
            let imageSelected = UIImage.init(named: imageArraySelected[i]);
            let tit = titles[i];
            
            
            print(tit)
            
            //item
            let item = UITabBarItem.init(title: tit, image: image, selectedImage: imageSelected);
            
            nav.tabBarItem = item;
            
        }
        
    }

    /*
     
     //设置tabBarItem选中状态和普通状态的颜色
     [item setTitleTextAttributes:@{NSForegroundColorAttributeName : UIColorFromRGB(0x448bfc)} forState:UIControlStateSelected];
     
     [item setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithWhite:0.0 alpha:1.0]} forState:UIControlStateNormal];
     nav.tabBarItem = item;
     }
     }
     
     //每次点击tabBar下标的时候调用此方法/
     //该方法用于控制TabBarItem能不能选中，返回NO，将禁止用户点击某一个TabBarItem被选中。但是程序内部还是可以通
     //过直接setSelectedIndex选中该TabBarItem
     - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
     
     __weak typeof(self) weakself = self;
     if ([viewController isKindOfClass:[UINavigationController class]]) {
     UINavigationController *nav = (UINavigationController *)viewController;
     if (nav.viewControllers.count > 0) {
     UIViewController *vc = [nav.viewControllers firstObject];
     if ([vc isKindOfClass:[AccountViewController class]]) {
     if ([Tool sharedInstance].isLogin == NO) {
     [Tool showLoginWithShouldDismiss:^(BOOL isLogin) {
     if (isLogin) {
     weakself.selectedViewController = viewController;
     if (nav.viewControllers.count > 1) {
     [nav popToRootViewControllerAnimated:NO];
     }
     }
     }];
     return NO;
     }
     }
     }
     }
     return YES;
     }
     
     - (BOOL)shouldAutorotate {
     return NO;
     }
     
     - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
     
     //    return UIInterfaceOrientationMaskAll;//支持所有方向
     //return UIInterfaceOrientationMaskLandscape;//横屏
     //return UIInterfaceOrientationMaskLandscapeLeft;//左横屏
     //return UIInterfaceOrientationMaskLandscapeRight;//右横屏
     //return UIInterfaceOrientationMaskPortrait;//竖屏
     //return UIInterfaceOrientationMaskPortraitUpsideDown;//上下颠倒
     
     return UIInterfaceOrientationMaskPortrait;//竖屏
     }
     */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
