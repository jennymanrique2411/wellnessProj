//
//  SignUpViewController.swift
//  wellnessProj
//
//  Created by Jenny Manrique on 2019-02-25.
//  Copyright © 2019 Jenny Manrique. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signUpTapped(_ sender: Any) {
        
        //guard let username = userTextField.text else { return }
        guard let email = emailTextField.text else { return }
        guard let pass = passwordTextField.text else { return }
        print("HOLA JENNY Y LUCA ")
        
        Auth.auth().createUser(withEmail: email, password: pass) {(user, error) in
            if let error = error {
                print("entramos al if")
                print(error.localizedDescription)
            } else if let user = user {
                print("entramos al else")
                print(user)
            }
        }
    }
    
}
