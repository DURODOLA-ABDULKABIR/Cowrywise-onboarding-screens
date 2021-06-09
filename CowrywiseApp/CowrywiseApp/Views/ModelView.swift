//
//  ModelView.swift
//  CowrywiseApp
//
//  Created by Decagon on 11.5.21.
//

import UIKit
class  Model {
   
    var profile: String?
    var placeholder: String?
    var requestCompletion: (() -> Void)?
    init(profile: String, placeholder: String) {
        self.profile = profile
        self.placeholder = placeholder
    }
    
}
