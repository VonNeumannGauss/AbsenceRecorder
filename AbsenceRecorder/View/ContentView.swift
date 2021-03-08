//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    let myDivisions: [Division]
    //need to make it change
    @State private var currentDate: Date = Date()
    
    var body: some View {
        
        NavigationView {
            //List viewtype used to show a collection of items
            List(myDivisions, id: \.self.code) { division in
                Text("Division code: \(division.code)")
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                //SOMETHING ?? SOMETHING ELSE = nil coalesecing - will run the stuff after ?? if nill
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
            }
        }
        
    }
}

//only for previewing the app
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(myDivisions: Division.examples)
    }
}
