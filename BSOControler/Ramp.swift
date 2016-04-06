//
//  Ramp.swift
//  BSOControler
//
//  Created by KawayokeYoshikazu on 2016/04/06.
//  Copyright © 2016年 Yoshikazu Kawayoke. All rights reserved.
//

import UIKit

@IBDesignable class Ramp: UIButton {
    
    // 角丸の半径(0で四角形)
    @IBInspectable var cornerRadius: CGFloat = 50.0
    
    // 枠
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor()
    @IBInspectable var borderWidth: CGFloat = 1.0
    
    override func drawRect(rect: CGRect) {
        // 角丸
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = (cornerRadius > 0)
        
        // 枠線
        self.layer.borderColor = borderColor.CGColor
        self.layer.borderWidth = borderWidth
        
        super.drawRect(rect)
    }
}