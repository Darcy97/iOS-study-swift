//
//  CirCleView.swift
//  GraphicsAPI
//
//  Created by 张皓 on 5/2/16.
//  Copyright © 2016 张皓. All rights reserved.
//

import UIKit

class CirCleView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        
        CGContextMoveToPoint(context, 80, 150)
        CGContextAddLineToPoint(context, 130, 150)
        CGContextAddArc(context, 80, 150, 50, 0, CGFloat(M_PI)/2, 0)
        CGContextFillPath(context)
        
        CGContextSetFillColorWithColor(context, UIColor.blueColor().CGColor)
        CGContextFillEllipseInRect(context, CGRect(x: 10, y: 250, width: 100, height: 100))

        CGContextSetFillColorWithColor(context, UIColor.greenColor().CGColor)
        CGContextFillEllipseInRect(context, CGRect(x: 10, y: 400, width: 50, height: 100))
    }


}
