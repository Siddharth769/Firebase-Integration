//
//  HomeScreenViewController.swift
//  FirebaseApplication
//
//  Created by siddharth on 27/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit
import Firebase

class HomeScreenViewController: UIViewController {

    
    @IBAction func logout(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
