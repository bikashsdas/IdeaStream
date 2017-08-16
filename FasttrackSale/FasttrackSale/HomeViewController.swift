//
//  HomeViewController.swift
//  FasttrackSale
//
//  Created by Bikash Sukla Das on 14/08/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var btnLogout: UIButton?
    @IBOutlet var btnPlaceOrder: UIButton?
    @IBOutlet var btnTrackOrder: UIButton?
    @IBOutlet var btnOrderHistory: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }*/
    
    @IBAction func logoutPressed(_sender: UIButton){
        //self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
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
