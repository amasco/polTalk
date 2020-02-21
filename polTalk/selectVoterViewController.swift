//
//  selectVoterViewController.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/13/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import UIKit
import GRDB

class selectVoterViewController: UIViewController {

    
    @IBAction func showTable(){
    
    func readData(atPath path: String) throws -> DatabaseQueue{
    let dbQueue = try DatabaseQueue(path: path)
    
    try dbQueue.read{ db in
        if let row = try Row.fetchOne(db, sql: "SELECT * FROM voter WHERE state = 'California'"){
        let first_name: String = row["first_name"]
        let last_name: String = row["last_name"]
        let age: Int = row["age"]
        let party: String = row["party"]
        let state: String = row["state"]
        let id: Int = row["id"]
        
        print(first_name, last_name, age, party, state, id)
       }
    }
    return dbQueue
    }
}
}
