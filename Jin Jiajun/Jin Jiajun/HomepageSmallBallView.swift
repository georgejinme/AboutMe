//
//  HomepageSmallBallView.swift
//  Jin Jiajun
//
//  Created by 钩钩么么哒 on 15/12/24.
//  Copyright © 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit

class HomepageSmallBallView: UIView{
    var category: UIImageView?
    var surround: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        surround = UIView(frame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height))
        surround?.backgroundColor = UIColor.DarkSlateGrayDeep()
        surround?.layer.cornerRadius = self.frame.size.width / 2
        self.addSubview(surround!)
        category = UIImageView(frame: CGRectMake(0, 0, self.frame.size.width - 20, self.frame.size.width - 20))
        //TODO
        category?.backgroundColor = UIColor.blackColor()
        category?.layer.cornerRadius = (self.frame.size.width - 20) / 2
        self.addSubview(category!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}