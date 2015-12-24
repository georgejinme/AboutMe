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

    var categories = Array<HomepageSmallBallView>()
    
    var numberOfCategories = 8
    
    var degree: Double{
        get{
            return atan(Double(self.center.x / self.center.y)) * 2
        }
    }
    
    
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
        for (var i = 0; i < 8; ++i){
            let smallBall = HomepageSmallBallView(frame: CGRectMake(0, 0, HomepageConstant.HeadBallEdge, HomepageConstant.HeadBallEdge))
            let (ox, oy) = getPos(i, length: self.center.y + 100)
            let (x, y) = getPos(i, length: HomepageConstant.HeadBallLineLength)
            smallBall.center = CGPointMake(ox, oy)
            self.addSubview(smallBall)
            UIView.animateWithDuration(0.5, animations: {
                smallBall.center = CGPointMake(x, y)
                }, completion: {[weak self](finish: Bool) in
                    self!.categories.append(smallBall)
            })
        }
    }
    
    func getPos(curr: Int, length: CGFloat) -> (CGFloat, CGFloat){
        if (curr < numberOfCategories / 2){
            let currDegree = (PI - degree) / 2 + Double(curr) * (degree / Double((self.numberOfCategories / 2 - 1)))
            let x = self.center.x - CGFloat(cos(currDegree)) * length
            let y = self.center.y - CGFloat(sin(currDegree)) * length
            return (x, y)
        }else{
            let currDegree = (PI - degree) / 2 + Double(curr - numberOfCategories / 2) * (degree / Double((self.numberOfCategories / 2 - (self.numberOfCategories + 1) % 2)))
            let x = self.center.x - CGFloat(cos(currDegree)) * length
            let y = self.center.y + CGFloat(sin(currDegree)) * length
            return (x, y)
        }
    }
}