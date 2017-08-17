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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        tfUsername?.text = nil
        tfPassword?.text = nil
    }
    
    //User login functional validation
    
    @IBAction func btnLoginPressed(_sender: UIButton){
        
        if(tfUsername?.text == "abc@gmail.com") && (tfPassword?.text == "123456"){
            
             let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
             let homeControllerObj = storyBoard.instantiateViewController(withIdentifier: "HomeControllerSBID") as! HomeViewController
             self.navigationController?.pushViewController(homeControllerObj, animated: true)
            
        }
        else{
            
             let alertObj = UIAlertController(title: "Alert", message: "Invalid credentials! Please enter the correct credentials.", preferredStyle: UIAlertControllerStyle.alert)
             alertObj.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
             self.present(alertObj, animated: true, completion: nil)
            
        }
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

