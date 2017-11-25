//
//  RegisterViewController.swift
//  FireMSN
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit
import Firebase


class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func RegisterPressed(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: correo.text!, password: password.text!){
            (user, error) in
            if error != nil
            {
                print(error!)
            }else{
                print("Registered")
                self.performSegue(withIdentifier: "GoToChat", sender: self)
            }
            
        }

    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
