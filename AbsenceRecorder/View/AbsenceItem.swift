//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 15/03/2021.
//

import SwiftUI

struct AbsenceItem: View {
    let forename: String
    var isPresent: Bool
    
    var body: some View {
        HStack {
            Text("\(forename)")
            Spacer()
            if isPresent {
                Button(action: {}) {
                    Image(systemName: "checkmark.seal.fill")
                }
            } else {
                Button(action: {}) {
                    Image(systemName: "xmark.seal")
                }
                    
            }
        }
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(forename: "Steve", isPresent: true)
    }
}
