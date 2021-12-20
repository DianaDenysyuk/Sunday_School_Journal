//
//  ChildrenList.swift
//  Sunday_School_Journal
//
//  Created by Diana Denysiuk on 12/17/21.
//

import SwiftUI

struct ChildrenList: View {
    var group: Group
    
    var body: some View {
        NavigationView {
            List(group.children) { child in
                HStack {
                    child.icon
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(25)
                        .padding(6)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text(child.name)
                        Text(child.surname)
                    }
                    .padding(.leading, 6)
                    
                    Spacer()
                    Text("\(child.years)y")
                    Text(child.dateOfBirthText)
                        .frame(width: 90)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle(Text("Youngest group"))
        }
    }
}

struct ChildrenList_Previews: PreviewProvider {
    static var previews: some View {
        ChildrenList(group: Group.generate())
    }
}
