//
//  SignUpDetails.swift
//  CowrywiseApp
//
//  Created by Decagon on 12.5.21.
//

import Foundation
final class  SignUpDetails: Codable {
    var id: String?
    var email: String?
    var password: String?
    var firstName: String?
    var surName: String?
    var phoneNumber: String?
    init(email:String, password: String, firstName: String, surName: String, phoneNumber: String) {
        self.email = email
        self.password = password
        self.firstName = firstName
        self.surName = surName
        self.phoneNumber = phoneNumber
    }
    
}
