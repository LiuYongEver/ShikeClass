//
//  SettingViewController.swift
//  shikeClass
//
//  Created by 刘勇 on 2018/3/24.
//  Copyright © 2018年 shikeTeam. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController{
  
    lazy var settingView:SettingView = {
        let view = SettingView.init(frame: self.view.frame)
        view.delegate = self
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "设置"
        self.view.addSubview(settingView)

        // Do any additional setup after loading the view.
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
extension SettingViewController:SettingViewDelegate{
    func Push(vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func Pop() {
        
    }
    
    
    
    
}


