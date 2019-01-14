//
//  LoginViewController.swift
//  FirebaseApplication
//
//  Created by siddharth on 27/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func tryLogin(_ sender: Any) {
        guard let email = emailField.text else { return }
        guard let password = passwordField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if error == nil && user != nil {
                self.dismiss(animated: true, completion: nil)
            }else {
                print("Error Logging In \(error!.localizedDescription)")
            }
        }
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.layer.borderWidth = 0.75
        emailField.layer.cornerRadius = 10.0
        passwordField.layer.borderWidth = 0.75
        passwordField.layer.cornerRadius = 10.0
        
        
    }


}

