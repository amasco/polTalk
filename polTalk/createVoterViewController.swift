//
//  createVoterViewController.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/13/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import UIKit


class createVoterViewController: UIViewController, UITextFieldDelegate{

   
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var partyTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    
    
    
    @IBAction func getVal () {
        let firstName: String = firstNameTextField.text!
        let lastName: String = lastNameTextField.text!
        let age: String = ageTextField.text!
        let party: String = partyTextField.text!
        let state: String = stateTextField.text!
        
        
    }
    
    //path to database
    var databasePath = String()

    
    
}
