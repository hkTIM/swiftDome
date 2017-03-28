//
//  ViewController.swift
//  swiftDome
//
//  Created by 黄坤 on 2017/3/24.
//  Copyright © 2017年 黄坤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.white
        let btn = UIButton(type:UIButtonType.custom)
        btn.backgroundColor=UIColor.lightGray
        btn .setTitle("点击按钮", for: UIControlState.normal)
        btn.frame=CGRect(x: 100, y: 100, width: 200, height: 100)
        view .addSubview(btn)
        btn.addTarget(self, action:#selector(ViewController.action), for: UIControlEvents.touchDown)
        let goNextBtn = UIButton(type: UIButtonType.custom)
        goNextBtn.backgroundColor=UIColor.black;
        goNextBtn .setTitle("跳转页面", for: UIControlState.normal)
        goNextBtn.frame=CGRect(x: 100, y: 400, width: 200, height: 100)
        view .addSubview(goNextBtn)
        goNextBtn.addTarget(self, action: #selector(ViewController.TogoNextView), for: UIControlEvents.touchDown)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func action(){
        print("点击按钮成功")
    }
    func TogoNextView(){
        let nextView = nextVC()
//        self.present(nextView, animated: true, completion: nil)
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

