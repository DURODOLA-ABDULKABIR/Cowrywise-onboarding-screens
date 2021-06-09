//
//  WelcomePageView.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

class WelcomePageView: UIView {
    
    var exploreAction: (() -> Void)?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUp()
    }
    
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "7")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    func setUp() {
        
        addSubview(backgroundImageView)
        backgroundImageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        let welcomeStackView = createStackView(views: [createStackView(views: [titleTextLabel, welcomeTextLabel], spacing: 0, distribution: .fillProportionally, axis: .vertical), exploreButton], spacing: 20, distribution: .fillProportionally, axis: .vertical)
        addSubview(welcomeStackView)
        welcomeStackView.anchorWithConstantsToTop(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 550, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
    }
    
    let titleTextLabel: UILabel = {
        let tv = UILabel(title: "You're all set!", fontSize: 40, shade: 0)
        tv.textColor = .black
        return tv
    }()
    
    let welcomeTextLabel: UILabel = {
        let tv = UILabel(title: "Welcome to the family!", fontSize: 17, shade: 0.5)
        return tv
    }()
    
    let exploreButton: UIButton = {
        let button = UIButton(title: "EXPLORE COWRYWISE", backgroundColor: UIColor.blueBackgroundColor, fontSize: 16 )
        button.addTarget(self, action: #selector(handleExplore), for: .touchUpInside)
        return button
    }()
    
    @objc func handleExplore(){
        exploreAction?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
