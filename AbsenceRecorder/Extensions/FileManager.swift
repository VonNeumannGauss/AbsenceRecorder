//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 19/03/2021.
//

import Foundation

extension FileManager {
    func loadFromFile<T: Decodable>(from url: URL, decodableType: T) -> T?{
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            }
        }
        return nil
    }
    
    func saveToFile<U: Codable>(to url: URL, objectsToEncode: U) {
        //can take objects and convert into JSON text
        //create JSON encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(objectsToEncode) {
            //take encoded objects and convert them into string
            if let json = String(data: encoded, encoding: .utf8) {
                //using the user documents directory
                //create the file path
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
