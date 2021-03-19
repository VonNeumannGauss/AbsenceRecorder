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
    @Published var divisions: [Division] = []
    
    init() {
        //because when you initially run the code, the divisions.json file doesn't exist, so you need to runs this code initially to get some stuff in
        //divisions = Division.examples
        loadFromFile()
    }
    
    func loadFromFile() {
        let myFileManager = FileManager()
        if let loaded: [Division] = myFileManager.load(from: getPath(fileName: "divisions")) {
            divisions = loaded
        }
    }
    
    func getPath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in:.userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("\(fileName).json")
        
        return url
    }
    
    
    func saveToFile() {
        let myFileManager = FileManager()
        myFileManager.save(to: getPath(fileName: "divisions"), objectsToEncode: divisions)
    }
}
