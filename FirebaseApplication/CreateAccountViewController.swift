//
//  CreateAccountViewController.swift
//  FirebaseApplication
//
//  Created by siddharth on 27/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func createAccount(_ sender: Any) {
        guard let email = emailField.text else { return }
        guard let username = userNameField.text else { return }
        guard let password = passwordField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            user, error in
            if error == nil && user != nil {
                print("User Created")
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                changeRequest?.commitChanges {
                    error in
                    if error == nil {
                        print("Changed name successfully")
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }else {
                print("Error creating a new User \(error!.localizedDescription)")
            }
        }
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    


}
