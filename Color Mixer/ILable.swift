//
//  ILable.swift
//  Color Mixer
//
//  Created by MacOS Mojave on 14 October, 2019.
//  Copyright © 2019 Shemy. All rights reserved.
//

import UIKit

@IBDesignable class ILable: UILabel
{
    @IBInspectable var cornerRadius: CGFloat = 0.0
        {
        didSet
        {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0
        {
        didSet
        {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .black
        {
        didSet
        {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
}
