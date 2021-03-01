//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    //only runs when debuggging
    #if DEBUG
    //factory method
    //static means that these properties can be accessed at the class level - i.e. without instantiation - from the raw class
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        var myStudents = division.students
        
        //loop as many times as the parameter size says, to create Students and add them to the students array - real students as some dummy data
        for i in 0..<size {
            var dateComponents = DateComponents()
            
            dateComponents.year = 2004
            dateComponents.month = (i % 12) + 1
            dateComponents.day = 23
            dateComponents.timeZone = TimeZone(abbreviation: "BST")
            let calendar = Calendar(identifier: .gregorian)
            let birthday = calendar.date(from: dateComponents)
            
            let newStudent = Student(forename: "student \(i)", surname: "Etonian", birthday: birthday!)
            
            myStudents.append(newStudent)
            
        }
        
        division.students = myStudents
        
        print(myStudents)
        //print(students)
        
        return division
        
    }
    
    static let examples = [Division.createDivision(code: "cCV-1", of: 8),
                           Division.createDivision(code: "MCW-1", of: 10),
                           Division.createDivision(code: "vCX-1", of: 20),
                           Division.createDivision(code: "vCY-1", of: 16),
                           Division.createDivision(code: "vCZ-1", of: 24)
    ]
    
    #endif
}
