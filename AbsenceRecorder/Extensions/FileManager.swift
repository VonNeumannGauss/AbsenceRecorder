//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 19/03/2021.
//

import Foundation

extension FileManager {
    func loadFromFile<T: Decodable>(to url: URL, decodableType: T) -> T?{
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            }
        }
        return nil
    }
    
    
    
}
