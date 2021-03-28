//
//  ContentView.swift
//  mvvm
//
//  Created by Carlos Adan on 3/13/21.
//

import SwiftUI
import Foundation


struct ContentView: View {
    @ObservedObject var personViewModel: PersonViewModel = PersonViewModel()
    
    var body: some View {
        NavigationView {
               VStack {
                List(personViewModel.personList) { item in
                    NavigationLink(destination: DetailsView(person: item)) {
                       VStack(alignment: .leading) {
                        Text(item.name + " "+item.lastName)
                       }
                   }
                    .navigationBarTitle(item.name)
               }
                   }
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
