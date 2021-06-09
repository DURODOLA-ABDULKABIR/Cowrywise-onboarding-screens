//
//  SignUpController.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

class SignUpController: UIViewController {
    var signUpView: SignUpView!
    
 var getStartedView: GetStartedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .blueBackgroundColor
        setUpView()
    }
    
    func setUpView() {
        
        let signUpView = SignUpView(frame: self.view.frame)
        self.signUpView = signUpView
        self.signUpView.continueAction = continuePressed
        view.addSubview(signUpView)
    }
        
         func continuePressed() {
             let email = getStartedView?.emailTextField
            guard  let password = signUpView.PasswordTextField.text  else {return}
            guard  let firstName = signUpView.firsNameTextField.text  else {return}
            guard let surName = signUpView.surNameTextField.text else {return}
            guard let phoneNumber = signUpView.PhoneNumberTextField.text  else {return}

            if password == "" {
               let password = UIAlertController(title: "Login Error", message: "You have provided invalid email or password. Please check and try again", preferredStyle: .alert)
               password.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               present(password, animated: true, completion: nil)
           }
            
            let details = SignUpDetails(email: email?.text ?? "duro@gmail.com", password: password, firstName: firstName, surName: surName, phoneNumber: phoneNumber)
            let postRequest = APIRequest(endpoint: "signup")
            postRequest.saveDetails(details) { result in
                switch result{
                case .success(let details):
                    print("the following details has been sent: \(String(describing: details.surName))")
                case .failure(let error):
                    print("An error occured\(error)")
                }
            }
            let welcomePageController = WelcomePageController()
            welcomePageController.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(welcomePageController, animated: true)

        }
}
