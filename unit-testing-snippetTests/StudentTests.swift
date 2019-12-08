//
//  StudentTests.swift
//  unit-testing-snippetTests
//
//  Created by Declan on 03/12/2019.
//  Copyright © 2019 Declan. All rights reserved.
//

import Foundation
import XCTest

@testable import unit_testing_snippet

class StudentTests: XCTestCase {
    
    func testInvalidFirstName() {
        
        let student = Student(firstName: "DD", lastName: "Conway")
        
        //The students first name does not have more than 3 characters, correct?
        //OR (another way of putting it..)
        //Is it false that the students first name has more than 3 chracters?
        XCTAssertFalse(student.validFirstName())
        
    }
    
    func testValidLastName() {
        
        let student = Student(firstName: "Declan", lastName: "Conway")
               
        //Is it true that the students last name has more than 3 characters?
        XCTAssertTrue(student.validLastName())
        
    }
    
    func testAddFriend() {
        
        let declan = Student(firstName: "Declan", lastName: "C")
        let pa = Student(firstName: "Pa", lastName: "Test")
        
        //Is it true that the number of friends Declan has is equal to zero?
        //i.e Number of students in friends array
        XCTAssertTrue(declan.friends.count == 0)
        
        //Add student Pa to Student Declan friends arrayin
        declan.addFriend(name: pa)
        
        //Is it true that the number of friends Declan has is greater than 0?
        XCTAssertTrue(declan.friends.count > 0)
        
    }
    
}
