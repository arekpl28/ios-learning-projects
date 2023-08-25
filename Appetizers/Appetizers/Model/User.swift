//
//  User.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 25/08/2023.
//

import Foundation

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
