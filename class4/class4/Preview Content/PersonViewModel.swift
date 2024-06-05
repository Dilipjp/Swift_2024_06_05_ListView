//
//  PersonViewModel.swift
//  class4
//
//  Created by User on 2024-06-05.
//

import Foundation
class PersonViewModel :  ObservableObject{
    @Published var persons : [Person] = []
    
    @Published var name : String = ""
    @Published var age : String = ""
    @Published var job : String = ""
    
    func addPerson(){
        let newPeraon = Person(name: name,age:age, job: job)
        persons.append(newPeraon)
        name = ""
        age = ""
        job = ""
    }
}
