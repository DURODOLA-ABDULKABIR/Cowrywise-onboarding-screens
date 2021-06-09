//
//  SignInController.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit
class SignInController: UIViewController {
    var signInView: SignInView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .blueBackgroundColor
        self.navigationController?.navigationBar.tintColor = .blue
        
        
        setUpView()
        view.backgroundColor = .white
    }
    
    func setUpView() {
        let signInView = SignInView(frame: self.view.frame)
        self.signInView = signInView
        view.addSubview(signInView)
    }
    
    
}
