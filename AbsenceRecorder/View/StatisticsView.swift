//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 12/03/2021.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        VStack {
            Text("Statistics")
            Text("First division is \(state.divisions[0].code)")
            /*
            Text("First student in first division is \(state.divisions[0].students[0])")
             */
        }
        /*
        List(state.divisions[0], id: \.self.forename) { student in
            Text("Student's first name is \(student.forename)")
        }
         */
        
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
