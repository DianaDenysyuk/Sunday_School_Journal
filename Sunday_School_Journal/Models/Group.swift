//
//  Group.swift
//  Sunday_School_Journal
//
//  Created by Diana Denysiuk on 12/17/21.
//

import Foundation
import SwiftUI

struct Group {
    var teachers: [Teacher]
    var children: [Child]
}

extension Group {
    static func generate() -> Group {
        let names: [String] = ["Diana", "Sasha", "Ivanka", "Elizabeth", "Lucas"]
        let surnames: [String] = ["Denysiuk", "Zhukov", "Uzun", "Hartavel", "Berezhinskiy"]
        let images: [Image] = [Image("child0"), Image("child1")]
        
        var children: [Child] = []
        for _ in 0...15 {
            let child = Child.init(name: names.randomElement() ?? "Ops",
                                   surname: surnames.randomElement() ?? "Sorry",
                                   icon: images.randomElement() ?? Image.init(systemName: "clock"),
                                   dateOfBirth: Date().addingTimeInterval(-179737900 - Double(arc4random_uniform(31536000))))
            
            children.append(child)
        }
        
        return Group.init(teachers: [], children: children)
    }
}
