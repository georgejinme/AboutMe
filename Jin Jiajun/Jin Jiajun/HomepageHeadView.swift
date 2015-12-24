//
//  HomepageHeadView.swift
//  Jin Jiajun
//
//  Created by 钩钩么么哒 on 15/12/24.
//  Copyright © 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit

class HomepageHeadView: UIView{
    var headImage: UIImageView?
    var surrounding: UIView?

    var categories = Array<HomepageHeadView>()
    var lines = Array<UIView>()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews(){
        surrounding = UIView(frame: CGRectMake(0, 0, self.frame.size.width - HomepageConstant.HeadSurroundMargin, self.frame.size.width - HomepageConstant.HeadSurroundMargin))
        surrounding?.backgroundColor = UIColor.DarkSlateGrayDeep()
        surrounding?.layer.cornerRadius = (self.frame.size.width - HomepageConstant.HeadSurroundMargin) / 2
        surrounding?.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2)
        self.addSubview(surrounding!)
        
        headImage = UIImageView(frame: CGRectMake(0, 0, self.frame.size.width - HomepageConstant.HeadImageMargin, self.frame.size.width - HomepageConstant.HeadImageMargin))
        headImage?.backgroundColor = UIColor.blackColor()
        headImage?.layer.cornerRadius = (self.frame.size.width - HomepageConstant.HeadImageMargin) / 2
        headImage?.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2)
        self.addSubview(headImage!)
    }
}