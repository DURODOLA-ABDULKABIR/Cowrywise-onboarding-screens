//
//  SignUpView.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

class SignUpView: UIView {
    var getStartedView: GetStartedView!
    var continueAction: (() -> Void)?
    var email = ""
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUp()
    }
    
    func setUp(){
        let signUpStackView = createStackView(views: [
            titleTextLabel,
            createStackView(views: [firsNameTextField, surNameTextField], spacing: 10, distribution: .fillProportionally, axis: .horizontal),
            PasswordTextField,
            PhoneNumberTextField,
            continueButton
        ], spacing: 60, distribution: .fillEqually, axis: .vertical)
        
        let inviteButton = inviteCodeButton
        let footer = footerTextLabel
        addSubview(signUpStackView)
        addSubview(inviteButton)
        addSubview(footer)
        signUpStackView.anchorWithConstantsToTop(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 80, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        inviteButton.anchorWithConstantsToTop(top: signUpStackView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 130, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        footer.anchorWithConstantsToTop(top: inviteButton.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 20, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        
        
    }
    
    let titleTextLabel: UILabel = {
        let tv = UILabel(title: "Lets get to know you.", fontSize: 23, shade: 0)
        tv.textColor = .black
        return tv
    }()
    
    let firsNameTextField: UITextField = {
        let tf = UITextField(placeHolder: "Firstname", fontSize: 17, white: 0.8, alpha: 1, security: false)
        return tf
    }()
    
    let surNameTextField: UITextField = {
        let tf = UITextField(placeHolder: "Surname", fontSize: 17, white: 0.8, alpha: 1, security: false)
        return tf
    }()
    
    let PhoneNumberTextField: UITextField = {
        let tf = UITextField(placeHolder: "Phone number", fontSize: 17, white: 0.8, alpha: 1, security: false)
        return tf
    }()
    
    let PasswordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password", fontSize: 17, white: 0.8, alpha: 1, security: true)
        return tf
    }()
    
    let continueButton: UIButton = {
        let button = UIButton(title: "CONTINUE", backgroundColor: UIColor.blueBackgroundColor, fontSize: 16 )
        button.addTarget(self, action: #selector(handleContinue), for: .touchUpInside)
        return button
    }()
    
    let inviteCodeButton: UIButton = {
        let button = UIButton(title: "Got an invite code?", textColor: UIColor.blueBackgroundColor, fontSize: 17 )
        return button
    }()
    
    let footerTextLabel: UILabel = {
        let tv = UILabel(title: """
                                    By signing up you agree to our terms &
                                            Conditions and Privacy Policy
                                """, fontSize: 17, shade: 0.6)
        tv.lineBreakMode = .byWordWrapping
        tv.numberOfLines = 2
        return tv
    }()
    
    
    @objc func handleContinue() {
        continueAction?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
