//
//  ViewController.swift
//  CowrywiseApp
//
//  Created by Decagon on 8.5.21.
//

import UIKit

class GetStartedController: UIViewController {
    
    var signupView: GetStartedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func setupView(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = .link
        
        let mainView = GetStartedView(frame: self.view.frame)
        self.signupView = mainView
        self.signupView.signUpAction = getStartedPressed
        self.signupView.signInAction = signInPressed
        self.view.addSubview(signupView)
        signupView.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    func getStartedPressed() {
        guard let email = signupView.emailTextField.text?.lowercased() else {return}
        if email != "" && email.isValidEmail {
            let signUpController = SignUpController()
            signUpController.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(signUpController, animated: true)
        }
        if email == "" || !email.isValidEmail {
            let Alert = UIAlertController(title: "Ooops Sorry", message: "Please provide your email to continue", preferredStyle: .alert)
            Alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(Alert, animated: true, completion: nil)
        }
        
    }
    
    func signInPressed() {
        let signInController = SignInController()
        signInController.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(signInController, animated: true)
    }
}

