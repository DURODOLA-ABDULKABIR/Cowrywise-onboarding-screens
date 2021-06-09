//
//  Profile+Struct.swift
//  CowrywiseApp
//
//  Created by Decagon on 12.5.21.
//

import Foundation

struct Profile: Codable {
    let id, firstName, lastName, username: String
    let gender: Bool
    let dateOfBirth, nextOfKin, postalAddress, email: String
    let phoneNumber: String
}
