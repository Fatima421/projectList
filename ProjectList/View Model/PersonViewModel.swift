//
//  PersonViewModel.swift
//  ProjectList
//
//  Created by Fatima Syed on 15/09/2021.
//  Copyright © 2021 Fatima Syed. All rights reserved.
//

import Foundation

class PersonViewModel {
    
    let persons: [Person] = hardcodeModels()
    
    func getPersonCount() -> Int {
        return persons.count
    }
    
    func getPersonName(_ indexPath: Int) -> String {
        return persons[indexPath].name
    }
    
    func getPersonSurname(_ indexPath: Int) -> String {
        return persons[indexPath].surname
    }
    
    func getPersonCharge(_ indexPath: Int) -> String {
        return persons[indexPath].charge
    }
    
    func getPersonPhoto(_ indexPath: Int) -> String {
        return persons[indexPath].photo
    }
}
