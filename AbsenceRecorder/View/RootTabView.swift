//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 12/03/2021.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView(myDivisions: Division.examples)
                .tabItem {
                    //label = two views - image and text combined
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                    
                }
            //Statistics view - no functionality - create a file and just put it in here as an additional tab with image and text
            StatisticsView()
                .tabItem {
                    Image(systemName: "number")
                    Text("Statistics")
                }
            
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
