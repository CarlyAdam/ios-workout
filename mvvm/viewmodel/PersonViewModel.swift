//
//  PersonViewModel.swift
//  mvvm
//
//  Created by Carlos Adan on 3/13/21.
//

import Foundation

class PersonViewModel : ObservableObject{
    
    @Published var personList = [Person]()
    
    func getPersons(){
        
    }
    
    init() {
        let john = Person(id: 1, name: "John", lastName: "Doe")
        let jane = Person(id: 3, name: "Jane", lastName: "Doe")
        
        personList.append(jane)
        personList.append(john)
       
      }
}
