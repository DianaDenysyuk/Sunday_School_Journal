//
//  Teacher.swift
//  Sunday_School_Journal
//
//  Created by Diana Denysiuk on 12/19/21.
//

import Foundation
import SwiftUI

struct Teacher: Identifiable {
    var id: String {
        return name + dateOfBirth.description
    }
    
    var name: String
    var icon: Image
    var dateOfBirth: Date
}
