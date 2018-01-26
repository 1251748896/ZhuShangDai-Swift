//
//  BaseViewController.swift
//  ZhuShangDai-Swift
//
//  Created by Mac on 17/6/21.
//  Copyright © 2017年 jiangbo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white;
        
        
//        var bundle: Bundle = Bundle.main;
        
        
        
        
    }
    
    //get
    func getDataWithParams(url:String, dic:[String:AnyObject]?,msg:String,anmation:Bool) -> Void {
        
        
        
        
        
        
//        let cURL = NSURL(string: url);
//        let request:NSURLRequest = NSURLRequest(url: cURL);
        
    }
    //post
    func postDataWithParams(url:String, dic:[String:AnyObject]?,msg:String,anmation:Bool,header:String) -> Void {
        
    }
    
    //upload image
    func uploadImageDataWithParams(url:String, dic:[String:AnyObject]?,msg:String,anmation:Bool,header:String) -> Void {
        
    }
    
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
