//
//  ShapeView.swift
//  GraphicsAPI
//
//  Created by 张皓 on 5/2/16.
//  Copyright © 2016 张皓. All rights reserved.
//

import UIKit

class ShapeView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        CGContextMoveToPoint(context, 10, 100)
        CGContextAddLineToPoint(context, 10, 200)
        CGContextAddLineToPoint(context, 110, 200)
        CGContextFillPath(context)
    }


}
