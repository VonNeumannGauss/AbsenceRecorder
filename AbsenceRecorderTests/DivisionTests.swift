//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateTomorrow = Date(timeIntervalSinceNow: 1000000000)
        
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        //just a check if actual is nil
        if let actualNotNil = actual {
            XCTAssertEqual(actual!.dateTakenOn, absence2.dateTakenOn)
        }
    }
    
    func testcreateAbsenceOrGetExistingIfAvailableReturnsNotNilWhenAbsenceExists() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
        //act
        
        //assert
        XCTAssertNotNil(division.createAbsenceOrGetExistingIfAvailable(for: dateToday))
    }
    
    func testcreateAbsenceOrGetExistingIfAvailableReturnsNotNilWhenAbsenceDoesNotExist() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateInFuture = Date(timeIntervalSinceNow: 100000)
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
        
        //act
        
        //assert
        XCTAssertNotNil(division.createAbsenceOrGetExistingIfAvailable(for: dateInFuture))
    }

}
