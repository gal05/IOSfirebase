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
    var databaseRefer:DatabaseReference!
    var databaseHandle:DatabaseHandle!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
        // Do any additional setup after loading the view, typically from a nib.
        let ref = Database.database().reference()
        ref.child("alguien/nosoyoy").setValue("Algo")
        //ref.childByAutoId().setValue(["nombre":"Justin","apellido":"Guerra Guerra"])
        */
        databaseRefer = Database.database().reference()
        databaseRefer.child("name").childByAutoId().setValue("Visa1");
        
        databaseHandle = databaseRefer.child("name").observe(.childAdded,with:{(data) in
            let name:String=(data.value as? String)!
            debugPrint(name)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

