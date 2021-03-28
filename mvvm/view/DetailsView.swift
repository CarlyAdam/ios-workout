//
//  DetailsView.swift
//  mvvm
//
//  Created by Carlos Adan on 3/13/21.
//

import SwiftUI

struct DetailsView: View {
    @ObservedObject var person: Person
    var body: some View {
        VStack {
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(person.name)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(person.lastName)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
            }
        }
    }
}
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailsView(person: Person(id: 0, name: "a", lastName: "a"))
                }
    }
}
