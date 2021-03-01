//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //make ti so taht Text displays some data about the first division in the list of divisions - make reference to the static property 'examples'
        
        let myDivisions = Division.examples
        
        let firstDivision = myDivisions[0]
        
        Text("Division code: \(firstDivision.code)")
            .padding()
        
        Text("Number of students: \(firstDivision.students.count)")
            .padding()
        
        //won't work as the students are Student objects, not text - XCode doesn't know what to do with them
        //Text("Students: \(firstDivision.students)")
          
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
