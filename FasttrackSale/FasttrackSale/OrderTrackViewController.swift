//
//  OrderTrackViewController.swift
//  FasttrackSale
//
//  Created by arnab on 8/20/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class OrderTrackViewController: UIViewController {

    @IBOutlet var btnLogout: UIButton?
    @IBOutlet var btnBack: UIButton?
    @IBOutlet var btnHome: UIButton?
    @IBOutlet var vwScrollOrderTrack: UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vwScrollOrderTrack?.bounces = false
        vwScrollOrderTrack?.alwaysBounceHorizontal = false
        vwScrollOrderTrack?.alwaysBounceVertical =
        false
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func backPressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnHomePressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func logOutBtnPressed(_sender: UIButton){
        
        //        let newViewController = LoginViewController()
        //        self.navigationController?.pushViewController(newViewController, animated: true)
    }


}
