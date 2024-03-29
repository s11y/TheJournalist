//
//  HomeDisagreeImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/06.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeDisagreeImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.updateCorner()
        self.addBorder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.updateCorner()
        self.addBorder()
    }

    override func drawRect(rect: CGRect) {
        self.updateCorner()
        self.addBorder()
    }
    
    func updateCorner() {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.masksToBounds = true
    }
    
    func addBorder() {
        self.layer.borderColor = Color.blueColor.CGColor
        self.layer.borderWidth = 2.0
    }
}
