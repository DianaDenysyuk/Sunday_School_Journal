//
//  Child.swift
//  Sunday_School_Journal
//
//  Created by Diana Denysiuk on 12/17/21.
//

import Foundation
import SwiftUI

struct Child: Identifiable {
    var id: String {
        return name + dateOfBirth.description
    }
    
    var name: String
    var surname: String
    var icon: Image
    var dateOfBirth: Date
    
    var dateOfBirthText: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd"
        
        return dateFormatter.string(from: dateOfBirth)
    }
    
    var years: Int {
        return Calendar.current.dateComponents([.year], from: dateOfBirth, to: Date()).year ?? 0
    }
}
