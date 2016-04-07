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
    
    var on_off: Bool = false;
    @IBInspectable var buttonColor: UIColor = UIColor.blackColor()
    
    // 枠
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor()
    @IBInspectable var borderWidth: CGFloat = 1.0
    
    func off(){
        self.backgroundColor = UIColor.blackColor()
        self.on_off = false;
    }
    
    func on(){
        self.backgroundColor = buttonColor
        self.on_off = true;
    }
    
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