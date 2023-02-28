//
//  UIColorExtension.swift
//  ColorsApp
//
//  Created by user on 28/02/2023.
//

import UIKit


extension UIColor{
    
    
    static  func randomColor() -> UIColor {
        let randomColor = UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: CGFloat.random(in: 0...1))
        return randomColor
    }
}
