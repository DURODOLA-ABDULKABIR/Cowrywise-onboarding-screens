//
//  VerticaStackview+Extension.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

extension UIView{
    func createStackView(views: [UIView], spacing: CGFloat, distribution: UIStackView.Distribution, axis: NSLayoutConstraint.Axis) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = axis
        stackView.distribution = distribution
        stackView.spacing = spacing
        return stackView
    }
}
