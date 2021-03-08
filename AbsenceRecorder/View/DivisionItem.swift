//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Marinov, Zachary (Coll) on 08/03/2021.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle")
            Text("\(division.code)")
                .padding()
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division(code: "vCV-1"))
    }
}
