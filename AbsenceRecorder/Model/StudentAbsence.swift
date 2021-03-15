//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isPresent: Bool = true
    
    init(student: Student) {
        self.student = student
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
    
}
