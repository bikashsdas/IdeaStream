//
//  OrderDetailsViewController.swift
//  FasttrackSale
//
//  Created by arnab on 8/17/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit
import QuartzCore

class OrderDetailsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var btnLogout: UIButton?
    @IBOutlet var btnHome: UIButton?
    @IBOutlet var tblView: UITableView?
    @IBOutlet var btnCancelOrder: UIButton?
    @IBOutlet var btnTrackOrder: UIButton?
    @IBOutlet var btnEmailInvoice: UIButton?
    @IBOutlet var btnViewInvoice: UIButton?
    
    
    var productImages = ["lmregular100.jpeg", "lmBlueReg.png", "marlborofusebeyond.jpeg", "MarlboroBright.jpeg", "marlbobeyond.jpeg"]
    var productsName = ["L&M REGULAR CUT RED 100 BOX 19 201508", "L&M REGULAR CUT BLUE 100 BOX 19 201508", "Marlboro Fuse Beyond 19s 20150101 56kr", "MARLBORO BRIGHT BEYOND 201510", "MARLBORO FINE BEYOND 19s 201511"]
    var productsQuantuty = ["10 Pack/Box", "70 Pack/Box", "90 Pack/Box", "100 Pack/Box", "110 Pack/Box"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tblView?.delegate = self;
        tblView?.dataSource = self;
        self.tblView?.separatorStyle = UITableViewCellSeparatorStyle.none
        makeRoundButton()
       
    }
    
    func makeRoundButton(){
        btnCancelOrder?.layer.cornerRadius = 9
        btnCancelOrder?.layer.masksToBounds = true
        btnTrackOrder?.layer.cornerRadius = 9
        btnTrackOrder?.layer.masksToBounds = true
        btnViewInvoice?.layer.cornerRadius = 9
        btnViewInvoice?.layer.masksToBounds = true
        btnEmailInvoice?.layer.cornerRadius = 9
        btnEmailInvoice?.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func btnHomePressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderDetailsCellSecond", for: indexPath) as! ProductDetailsCell
            cell.selectionStyle = .none
            cell.btnCancelItem?.layer.cornerRadius = 9
            cell.btnCancelItem?.layer.masksToBounds = true
            cell.lblProductName?.text = productsName[indexPath.row]
            cell.lblProductQuantiry?.text = productsQuantuty[indexPath.row]
            cell.imgVwProductImage?.image = UIImage(named: productImages[indexPath.row])
            return cell
    }

}
