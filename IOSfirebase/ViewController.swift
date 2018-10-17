//
//  ViewController.swift
//  IOSfirebase
//
//  Created by Guerra Jose on 17/10/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ref = Database.database().reference()
        ref.child("alguien/apellido").setValue("Cuenca")
        ref.childByAutoId().setValue(["nombre":"Justin","apellido":"Guerra Guerra"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

