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
    
    var dataToStore=[String:String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataToStore["codigo"] = "107907"
        dataToStore["password"] = "123"

        
        
        databaseRefer = Database.database().reference()
      /* let userDbRef = databaseRefer.child("usuarios").child("g")
        userDbRef.child("usuarioDetalles").setValue(dataToStore)
        */
        
        databaseRefer.child("usuarios").child("g").child("usuarioDetalles").observeSingleEvent(of: .value, with: {(snapshot) in
            let value = snapshot.value as? NSDictionary
            
            let codigo = value?["codigo"] as? String ?? ""
            let password = value?["password"] as? String ?? ""
            
            print("datos = \(password)  \(codigo)")
            
        })

        
        
        /*databaseHandle = databaseRefer.child("usuario").observe(.childAdded,with:{(data) in
            let name:String=(data.value as? String)!
            debugPrint(name)
        })*/

            /*.observe(of: .value, whit:  {(snapshot) in
            let value = snapshot.value as? NSDictionary;
            let username = value?["codigo"] as? String??
            
        })*/

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

