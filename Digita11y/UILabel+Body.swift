//
//  UILabel+Body.swift
//  Digita11y
//
//  Created by Christopher Reed on 2/29/16.
//  Copyright © 2016 Roundware. All rights reserved.
//

import Foundation
import UIKit

class UILabelBody: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.font = UIFont(name: "AvenirNext-Medium", size: 14.0)
        self.numberOfLines = 0
        self.lineBreakMode = NSLineBreakMode.ByWordWrapping
        self.textColor = UIColor.whiteColor()
        
    }
}