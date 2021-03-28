//
//  Person.swift
//  mvvm
//
//  Created by Carlos Adan on 3/13/21.
//

import Foundation

class Person : Identifiable,ObservableObject{
    @Published var id: Int
    @Published var name: String
    @Published var lastName: String
    
    init(id: Int, name: String, lastName: String) {
         self.id = id
         self.name = name
         self.lastName = lastName
      }

}
