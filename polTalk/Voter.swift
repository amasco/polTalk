//
//  Voter.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/12/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import Foundation


class Voter{
    var firstName:String = ""
    var lastName: String = ""
    var age: Int = 0
    var id: Int = 0
    var state: String = ""
    var party: String = ""
    
    init(firstName: String, lastName: String, age: Int, id: Int, state: String, party: String){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.id = id
        self.state = state
        self.party = party
    }
}
