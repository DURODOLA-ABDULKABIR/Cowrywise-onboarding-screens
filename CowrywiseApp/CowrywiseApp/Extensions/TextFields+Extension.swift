//
//  TextFields+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

extension UITextField{
    public convenience init(placeHolder: String, fontSize: CGFloat, white: CGFloat, alpha: CGFloat, security: Bool){
        self.init()
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 0.0
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: fontSize), .foregroundColor: UIColor(white: white, alpha: alpha)]))
        self.isSecureTextEntry = security
        self.attributedPlaceholder = placeholder
    }
}
