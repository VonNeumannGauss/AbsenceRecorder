//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 12/03/2021.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        List(division.students, id: \.self.forename) { student in
            AbsenceItem(forename: student.forename, isPresent: true)
        }
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
