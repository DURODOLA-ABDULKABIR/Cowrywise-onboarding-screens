//
//  UILabel+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit
extension UILabel{
    public convenience init(title: String, fontSize: CGFloat, shade: CGFloat){
        self.init()
        let attributedText = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize), .foregroundColor: UIColor(white: shade, alpha: 1)]))
        self.attributedText = attributedText
    }
}
