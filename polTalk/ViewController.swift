//
//  ViewController.swift
//  polTalk
//
//  Created by Adrian Mascorro on 2/11/20.
//  Copyright © 2020 Xor. All rights reserved.
//

import UIKit



class ViewController: UIViewController{
    
    @IBOutlet weak var firstNameOutlet: UITextField!

    @IBAction func submit(_ sender: UIButton)
    {
      if firstNameOutlet.text?.isEmpty == False
      {
         print(firstNameOutlet.text);
      }
    }
}

