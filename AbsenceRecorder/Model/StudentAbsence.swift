//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import Foundation

class StudentAbsence: ObservableObject, Codable {
    let student: Student
    @Published var isPresent: Bool = true
    
    init(student: Student) {
        self.student = student
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        isPresent = try container.decode(Bool.self, forKey: .isPresent)
    }
    
    //manual encoding / decoding
    private enum CodingKeys: CodingKey {
        case student, isPresent
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: .student)
        try container.encode(isPresent, forKey: .isPresent)
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
    
}
