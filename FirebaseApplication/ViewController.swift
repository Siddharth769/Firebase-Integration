//
//  ViewController.swift
//  FirebaseApplication
//
//  Created by siddharth on 27/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let user = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "showHomeScreenSegue", sender: self)
        }
    }
}
