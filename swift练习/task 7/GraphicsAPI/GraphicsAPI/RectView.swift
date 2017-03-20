//
//  RectView.swift
//  GraphicsAPI
//
//  Created by 张皓 on 5/2/16.
//  Copyright © 2016 张皓. All rights reserved.
//

import UIKit

class RectView: UIView {

    
    override func drawRect(rect: CGRect) {

        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        CGContextSetLineWidth(context, 5)
        CGContextSetStrokeColorWithColor(context, UIColor.blueColor().CGColor)
        CGContextFillRect(context, CGRect(x: 10, y: 100, width: 100, height: 100))
        CGContextStrokeRect(context, CGRect(x: 10, y: 100, width: 100, height: 100))
        
//        CGContextSetLineWidth(context, 1)
        CGContextSetLineJoin(context, CGLineJoin.Round)
        CGContextSetLineCap(context, CGLineCap.Round)
        CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextMoveToPoint(context, 150, 100)
        CGContextAddLineToPoint(context, 150, 200)
        CGContextAddLineToPoint(context, 250, 200)
        CGContextAddLineToPoint(context, 250, 100)
        CGContextAddLineToPoint(context, 150, 100)
//        CGContextStrokePath(context)
        CGContextFillPath(context)

    }


}
