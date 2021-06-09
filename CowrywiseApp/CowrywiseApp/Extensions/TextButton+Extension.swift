//
//  TextButton+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit


extension UIButton{
    public convenience init(title: String, textColor: UIColor, fontSize: CGFloat){
        self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize), .foregroundColor: textColor ]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 5
    }
}









