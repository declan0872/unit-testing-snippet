//
//  Student.swift
//  unit-testing-snippet
//
//  Created by Declan on 23/11/2019.
//  Copyright © 2019 Declan. All rights reserved.
//

import Foundation

class Student {
    
    private let firstName: String
    private let lastName: String
    
    var friends: [Student] = []
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addFriend(name: Student){
        friends.append(name)
    }
    
    func validFirstName() -> Bool {
        return firstName.count > 3
    }
    
    func validLastName() -> Bool {
        return lastName.count > 3
    }
    
}
