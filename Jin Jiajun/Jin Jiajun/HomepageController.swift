//
//  ViewController.swift
//  Jin Jiajun
//
//  Created by 钩钩么么哒 on 15/12/24.
//  Copyright © 2015年 钩钩么么哒. All rights reserved.
//

import UIKit

class HomepageController: UIViewController {
    
    var head: HomepageHeadView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.DarkSlateGray()
        head = HomepageHeadView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        head?.backgroundColor = UIColor.clearColor()
        head?.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
        self.view.addSubview(head!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

