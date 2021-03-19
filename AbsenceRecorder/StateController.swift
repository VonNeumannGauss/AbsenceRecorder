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
        let myFileManager = FileManager()
        divisions = myFileManager.loadFromFile(from: getPath(fileName: "divisions"), decodableType: [Division])
        //divisions = Division.examples
    }
    
    func loadFromFile() {
        //get url to the file you want to load from
        let url = getPath(fileName: "divisions")
        
        //extracts binary data from file
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func getPath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in:.userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("\(fileName).json")
        
        return url
    }
    
    //make a function taht handles the path stuff for a general url
    //extensions on FileManager - methods for save and load. Takes as a parameter save.load nad the objects that you want to deal with
    
    func saveToFile() {
        //can take objects and convert into JSON text
        //create JSON encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            //take encoded objects and convert them into string
            if let json = String(data: encoded, encoding: .utf8) {
                //using the user documents directory
                //create the file path
                let url = getPath(fileName: "divisions")
                do {
                    //write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
