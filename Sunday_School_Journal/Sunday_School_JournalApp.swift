//
//  Sunday_School_JournalApp.swift
//  Sunday_School_Journal
//
//  Created by Diana Denysiuk on 12/17/21.
//

import SwiftUI

@main
struct Sunday_School_JournalApp: App {
    var body: some Scene {
        WindowGroup {
            ChildrenList(group: Group.generate())
        }
    }
}
