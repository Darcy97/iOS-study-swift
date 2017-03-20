//
//  CurveView.swift
//  GraphicsAPI
//
//  Created by 张皓 on 5/3/16.
//  Copyright © 2016 张皓. All rights reserved.
//

import UIKit

class CurveView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(context, 10, 200)
//        CGContextAddQuadCurveToPoint(context, 100, 0, 200, 200)
        CGContextAddCurveToPoint(context, 100, 0, 100, 400, 200, 200)
        CGContextStrokePath(context)
        
    }


}
