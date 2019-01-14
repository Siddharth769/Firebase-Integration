//
//  CustomButton.swift
//  Week2Day4TextField
//
//  Created by siddharth on 06/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
        layer.borderWidth = 0.75
    }
}
