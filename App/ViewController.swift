//
//  ViewController.swift
//  App
//
//  Created by Phindile on 2020/11/07.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var vieww: UIView!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
       
        setElements()
                
    }
    
    func setElements() {
        Utilities.background(mainView)
        Utilities.background2(vieww)
        Utilities.styleTextField(usernameTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleButton(signInButton)
        Utilities.image(logoImage)
    }
    
    func isPasswordValid(_ password : String) -> Bool{
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    func validateFields() -> String? {
        
        if usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        
        {
            return "Please fill in all fields"
        }
        
        let finalPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if isPasswordValid(finalPassword) == false {
            return "Password should atleast contains 8 characters, a special character and atleast one digit"
        }
        return nil
       }
    
    @IBAction func signInButton(_ sender: Any) {
        
        let error = validateFields()
        
        if error != nil { //there is error
            //show error message
            showErrorMessage(error!)
        }
        
        else{
            
            let email = usernameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                if err != nil{
                    self.showErrorMessage("Error creating user")
                }
                else{
                    
                    self.performSegue(withIdentifier: "segue", sender: sender)
                }
            }
           
        }
    }
    
    func showErrorMessage(_ message:String) {
        
        errorLabel.text = message
        errorLabel.alpha = 1
    
    }
       
}
    
        


