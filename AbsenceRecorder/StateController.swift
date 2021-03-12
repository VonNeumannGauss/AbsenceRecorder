//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 12/03/2021.
//

import Foundation

//controls state across whole application
//could also be used to persist state into hard drive or calling a web API

//observableOBject means that any view using this class will be notified when something marked @Published changes

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
