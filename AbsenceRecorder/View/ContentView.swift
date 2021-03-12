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
                //removed this code and put it into a separate view
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                //SOMETHING ?? SOMETHING ELSE = nil coalesecing - will run the stuff after ?? if nill
              
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.left.circle.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.right.circle.fill")
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
