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
    
    //test label to prove if getting text from field works
    @IBOutlet weak var firstNameLabel: UILabel!
    
    
    @IBAction func getVal () {
        let firstName: String = firstNameTextField.text!
        //set label equal to first name
        firstNameLabel.text = "\(firstName)"
    }
}
