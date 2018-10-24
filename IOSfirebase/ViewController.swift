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

    @IBOutlet weak var txtcodigo: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
            var pass="jose"

    
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

    }
    @IBAction func buttonIngresar(_ sender: Any) {
        
        let data:String!=txtcodigo.text
        print(data)
        print(pass)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

