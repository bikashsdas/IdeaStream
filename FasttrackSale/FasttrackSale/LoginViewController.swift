//
//  LoginViewController.swift
//  FasttrackSale
//
//  Created by Bikash Sukla Das on 11/08/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var btnLogin: UIButton?
    @IBOutlet var btnRegister: UIButton?
    @IBOutlet var tfUsername: UITextField?
    @IBOutlet var tfPassword: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tfUsername?.delegate = self
        tfPassword?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- UITextField delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if (textField == tfUsername) {
            textField.resignFirstResponder()
            tfPassword?.becomeFirstResponder()
        }
        else if (textField == tfPassword) {
            textField.resignFirstResponder()
        }
        
        return true
    }


}

