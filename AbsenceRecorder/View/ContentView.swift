//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    let myDivisions: [Division]
    var currentDate: Date = Date()
    
    var body: some View {
        
        NavigationView {
            //List viewtype used to show a collection of items
            List(myDivisions, id: \.self.code) { division in
                Text("Division code: \(division.code)")
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
        }
        
    }
}

//only for previewing the app
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(myDivisions: Division.examples)
    }
}
