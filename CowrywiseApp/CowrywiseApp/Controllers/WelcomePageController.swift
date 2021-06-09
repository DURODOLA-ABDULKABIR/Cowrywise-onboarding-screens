//
//  WelcomePageController.swift
//  CowrywiseApp
//
//  Created by Decagon on 10.5.21.
//

import UIKit

class WelcomePageController: UIViewController {
    
    var welcomeView: WelcomePageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .blueBackgroundColor
        let welcomePageView = WelcomePageView(frame: self.view.frame)
        self.welcomeView = welcomePageView
        self.welcomeView.exploreAction = explorePressed
        view.addSubview(welcomePageView)
    }
    
    func explorePressed() {
        let profileViewController = ProfileViewController()
        profileViewController.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
}
