//
//  Person.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/12/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import Foundation


class Voter{
    var name: String = ""
    var party: String = ""
    var id: Int = 0
    var age: Int = 0
    var state: String = ""
    
    init(id: Int, name: String, party: String, age: Int, state: String){
        self.id = id
        self.name = name
        self.party = party
        self.age = age
        self.state = state
        
    }
}
