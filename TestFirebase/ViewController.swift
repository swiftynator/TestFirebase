//
//  ViewController.swift
//  TestFirebase
//
//  Created by Евгений Свиридков on 26.04.2018.
//  Copyright © 2018 Евгений Свиридков. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendData(_ sender: UIButton) {
        ref = Database.database().reference()
        ref.child("Name/user").childByAutoId().setValue("John")
    }
    
    @IBAction func getData(_ sender: UIButton) {
        let refHandle = Database.database().reference()
        refHandle.observe(.value) { (snapshot) in
            let user = snapshot.childSnapshot(forPath: "Name").childSnapshot(forPath: "user").childSnapshot(forPath: "-LBMEdVdB7vb278Vfijo").value as! String
            print(user)
        }
        
        
    }
    

}

