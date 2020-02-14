//
//  VoterInfo.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/14/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import Foundation
import UIKit

//model for voter_table 
class VoterInfo: NSObject
 {
    var voter_id: Int = 0
    var firstName: String = String()
    var lastName: String = String()
    var age: Int = 0
    var state: String = String()
    var party: String = String()
}

