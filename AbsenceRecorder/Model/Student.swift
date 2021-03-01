//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import Foundation

class Student {
    let foreame: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Data) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
