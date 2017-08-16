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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- UITextField delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }


}

