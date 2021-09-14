//
//  File.swift
//  ProjectList
//
//  Created by Fatima Syed on 14/09/2021.
//  Copyright © 2021 Fatima Syed. All rights reserved.
//

import Foundation

func hardcodeModels() -> [Person] {
    var person = [Person]()
    person.append(Person(name: "amanda", surname: "flores", charge: "manager", photo: "amanda"))
    person.append(Person(name: "miguel", surname: "campos", charge: "janitor", photo: "miguel"))
    person.append(Person(name: "nick", surname: "luciernaga", charge: "boss", photo: "nick"))
    person.append(Person(name: "richard", surname: "campos", charge: "secretary", photo: "richard"))
    return person
}

class Person {
    let name: String
    let surname: String
    let charge: String
    let photo: String
    
    init(name: String, surname: String, charge: String, photo: String) {
        self.name = name
        self.surname = surname
        self.charge = charge
        self.photo = photo
    }
}
