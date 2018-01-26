//
//  MainViewController.swift
//  ZhuShangDai-Swift
//
//  Created by Mac on 17/6/21.
//  Copyright © 2017年 jiangbo. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController,UITableViewDelegate, UITableViewDataSource {

    //声明全局变量
    var _tableView = UITableView();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "main";
        //首页的 url和参数
        let url = " https://www.scyd360.com/api/Index/index";
        let d = ["nopopups":"1","token":"ll","version":"2"];
        
        self.getDataWithParams(url: url, dic: d as [String : AnyObject]?, msg: "", anmation:false);
        
        _tableView = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain);
        _tableView.delegate = self;
        _tableView.dataSource = self;
        self.view.addSubview(_tableView)
    }
    
    
    //delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indentifier = "cell";
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: indentifier);
        
        cell.textLabel?.text = String.init(format: "你们好------%zd", indexPath.row);
//        cell.subTitleLabel?.text = "哈哈哈哈"
        
        
        return cell;
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
