//
//  SignUpView.swift
//  CowrywiseApp
//
//  Created by Decagon on 8.5.21.
//

import UIKit

class GetStartedView: UIView {
    
    var signUpAction: (() -> Void)?
    var signInAction: (() -> Void)?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUp()
    }
    
    func setUp(){
        let getStartedStackView = createStackView(views: [
            titleTextLabel,
            placeHolderTextLabel,
            emailTextField,
            getStartedButton,
            createStackView(views: [accountTextLabel,
                                    signInButton], spacing: -60, distribution: .fillEqually, axis: .horizontal)
        ], spacing: 15, distribution: .fillProportionally, axis: .vertical)
        addSubview(headerImageView)
        addSubview(getStartedStackView)
        headerImageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor)
        getStartedStackView.anchorWithConstantsToTop(top: headerImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 40, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        
    }
    
    let headerImageView: UIImageView = {
        let image = UIImage(named: "1")
        let imageView = UIImageView(image: image)
        imageView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        return imageView
    }()
    
    let titleTextLabel: UILabel = {
        let tv = UILabel(title: "Let's get your money working", fontSize: 23, shade: 0.3)
        return tv
    }()
    
    let placeHolderTextLabel: UILabel = {
        let tv = UILabel(title: "Type in your email", fontSize: 15, shade: 0.6)
        return tv
    }()
    
    let accountTextLabel: UILabel = {
        let tv = UILabel(title: "Got an account?", fontSize: 15, shade: 0.6)
        tv.textAlignment = .right
        return tv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "", fontSize: 0, white: 0, alpha: 0, security: false)
        return tf
    }()
    
    let getStartedButton: UIButton = {
        let button = UIButton(title: "GET STARTED", backgroundColor: UIColor.blueBackgroundColor, fontSize: 18 )
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    
    let signInButton: UIButton = {
        let button = UIButton(title: "Sign In", textColor: UIColor.blueBackgroundColor, fontSize: 17 )
        button.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
        return button
    }()
    
    @objc func handleSignUp() {
        signUpAction?()
    }
    
    @objc func handleSignIn() {
        signInAction?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
