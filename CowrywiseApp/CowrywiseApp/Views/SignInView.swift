//
//  SignInView.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit
class SignInView: UIView {
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUp()
    }
    func setUp(){
        let signInStackView = createStackView(views: [
            titleTextLabel,
            emailTextLabel,
            emailTextField,
            passwordTextLabel,
            PasswordTextField,
            loginButton,
            forgotPasswordButton
        ], spacing: 15, distribution: .fillProportionally, axis: .vertical)
        addSubview(headerImageView)
        addSubview(signInStackView)
        headerImageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor)
        signInStackView.anchorWithConstantsToTop(top: headerImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 40, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
    }
    
    let headerImageView: UIImageView = {
        let image = UIImage(named: "1")
        let imageView = UIImageView(image: image)
        imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return imageView
    }()
    
    let titleTextLabel: UILabel = {
        let tv = UILabel(title: "Jump right back in.", fontSize: 23, shade: 0)
        tv.textColor = .black
        return tv
    }()
    
    let emailTextLabel: UILabel = {
        let tv = UILabel(title: "Email Address", fontSize: 15, shade: 0.6)
        return tv
    }()
    
    let passwordTextLabel: UILabel = {
        let tv = UILabel(title: "Password", fontSize: 15, shade: 0.6)
        return tv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email", fontSize: 17, white: 0.8, alpha: 1, security: false)
        return tf
    }()
    
    let PasswordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password", fontSize: 17, white: 0.8, alpha: 1, security: true)
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(title: "LOGIN", backgroundColor: UIColor.blueBackgroundColor, fontSize: 16 )
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(title: "Forgot Password?", textColor: UIColor.blueBackgroundColor, fontSize: 15 )
        return button
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
