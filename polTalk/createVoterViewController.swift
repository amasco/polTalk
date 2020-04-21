//
//  createVoterViewController.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/13/20.
//  Copyright © 2020 Xor. All rights reserved.
//
import GRDB
import UIKit


class createVoterViewController: UIViewController, UITextFieldDelegate{

   
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var partyTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    
    var firstName: String = ""
    var lastName: String = ""
    var age: String = ""
    var party: String = ""
    var state: String = ""
    
    //when Submit Voter button is pressed, this performs the action
    @IBAction func getVal () {
        firstName = firstNameTextField.text!
        lastName = lastNameTextField.text!
        age = ageTextField.text!
        party = partyTextField.text!
        state = stateTextField.text!
        print(firstName, "state is", state)
        
    }
    
    func printVal() {
         print(firstName, "state is", state)
        
    }
    
    //Need to get values from getVal and insert them into database
   func recordData(atPath path: String) throws -> DatabaseQueue{
    let dbQueue = try DatabaseQueue(path: path)
    
    try dbQueue.write{ db in
        try db.execute(sql: "INSERT INTO voter (first_name, last_name, age, state, party)"
            + " VALUES (?, ?, ?, ?, ?)", arguments: [firstName, lastName, age, state, party])
    }
    
    return dbQueue
    }
    
    //path to database
    var databasePath = String()

    
    
}
