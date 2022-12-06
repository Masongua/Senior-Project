//
//  SignupViewController.swift
//  Senior Project
//
//  Created by 11k on 12/1/22.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reenterPasswordTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressSignupButton(_ sender: Any) {
        
        
        guard let username = usernameTextField.text, let firstName = firstNameTextField.text, let lastName = lastNameTextField.text, let password = passwordTextField.text, let reenterPassword = reenterPasswordTextField.text else{return}
        
        guard !username.isEmpty, !firstName.isEmpty, !lastName.isEmpty, !password.isEmpty, !reenterPassword.isEmpty else{return}
        
        guard password == reenterPassword else{return}
        
        
        performSegue(withIdentifier: "signupToHome", sender: nil)
    }
    
}

