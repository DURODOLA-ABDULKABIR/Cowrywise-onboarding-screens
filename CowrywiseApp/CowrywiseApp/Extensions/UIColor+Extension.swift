//
//  UIColor+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

extension UIColor{
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static var blueBackgroundColor: UIColor = {
        return UIColor(r: 0, g: 102, b: 245)
    }()
}
