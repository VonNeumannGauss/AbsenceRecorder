//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 08/03/2021.
//

import Foundation

//want to modify date class so you can access this in ContentView
extension Date {
    //this method is now part of all Date objects 
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    func previousDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
}
