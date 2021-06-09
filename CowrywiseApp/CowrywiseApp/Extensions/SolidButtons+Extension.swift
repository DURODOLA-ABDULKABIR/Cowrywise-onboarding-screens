//
//  SolidButtons+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

extension UIButton{
    public convenience init(title: String, backgroundColor: UIColor, fontSize: CGFloat){
        self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize), .foregroundColor: UIColor.white ]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 5
        self.backgroundColor = backgroundColor 
        self.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
}


