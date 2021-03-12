//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 01/03/2021.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            //all child values and grandchild values and great-grandchild views, etc. all have access to this StateController
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
