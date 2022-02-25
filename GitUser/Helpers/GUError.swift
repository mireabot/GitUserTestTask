//
//  ErrorMessage.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 25.02.2022.
//

import Foundation

enum GUError : String, Error {
    case invalidUser = "This username doenst exist"
    case unableToDo = "Error occured"
    case serverError = "Server error"
    case invalidData = "Data was invalid"
    case invalidFollowers = "Followers were invalid"
}
