//
//  ViewController.swift
//  O.A.F.D.
//
//  Created by Ritik Suryawanshi on 24/08/20.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAnalytics
import FirebaseDatabase
import liquid_swipe

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func loginButton(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
                if error == nil{
                    self.performSegue(withIdentifier: "abc1", sender: nil)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
                
                
            }

            
        }
    
    
   
    

}

