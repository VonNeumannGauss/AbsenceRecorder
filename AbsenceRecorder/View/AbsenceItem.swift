//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import SwiftUI

struct AbsenceItem: View {
    //IF some other view is responsible for creating this instance, you use @ObservedObject
    //if THIS view is responsible for creating the object, you use @StateObject
    //@EnvironmentObject is for when 
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if studentAbsence.isPresent {
                Button(action: { toggleAbsent() }) {
                    Image(systemName: "checkmark.seal.fill")
                }
            } else {
                Button(action: { toggleAbsent() }) {
                    Image(systemName: "xmark.seal")
                }
                    
            }
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isPresent.toggle()
    }
    
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
