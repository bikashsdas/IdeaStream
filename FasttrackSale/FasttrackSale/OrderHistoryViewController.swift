//
//  OrderHistoryViewController.swift
//  FasttrackSale
//
//  Created by arnab on 8/17/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit
import QuartzCore

class OrderHistoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    
    @IBOutlet var btnLogout: UIButton?
    @IBOutlet var btnBack: UIButton?
    @IBOutlet var orderHistoryTblView: UITableView?
    
    
    var productsName = ["L&M REGULAR CUT RED 100 BOX 19 201508", "L&M REGULAR CUT BLUE 100 BOX 19 201508", "Marlboro Fuse Beyond 19s 20150101 56kr", "MARLBORO BRIGHT BEYOND 201510", "MARLBORO FINE BEYOND 19s 201511", "Marlboro Fuse Beyond 19s 20150101 (OLD-PACK)",
                  "L&M Double Forward Purple Ks Box 19 201601", "Marlboro Red Softpack 19s 201601", "Marlboro Blue Beyond 201602", "Marlboro Red Beyond 201602", "Marlboro Iceblast Ks Box 201602", "Marlboro Touch 19s 201602",
                  "Chesterfield Menthol Press 19 201602", "L&M BLUE LABEL KS BOX 19 201602", "CHESTERFIELD RED 100 BOX 19 201602", "L&M GREEN LABEL MNT KS BOX 19 201602", "Marlboro Gold Touch 20´s", "Marlboro Intense 20´s",
                  "Marlboro Orange Beyond 201602", "Marlboro White Mint 19s 201602 - Sampling", "L&M DOUBLE FORWARD Green Mint KS BOX 20 - 37 DKK", "Marlboro Menthol 20´s", "Marlboro Gold KS HB", "SKJOLD MENTHOL MNT 100 BOX 20 - 36 DKK",
                  "L&M YELLOW LABEL KS BOX 19 - 31 DKK", "SKJOLD GROEN MNT 100 BOX 20 - 24 DKK", "Marlboro Night Fusion 20´s", "Belmont Red 20´s"]
    
    
    var productsQuantuty = ["10 Pack/Box", "70 Pack/Box", "90 Pack/Box", "100 Pack/Box", "110 Pack/Box", "20 Pack/Box",
                        "10 Pack/Box", "40 Pack/Box", "50 Pack/Box", "80 Pack/Box", "10 Pack/Box2", "90 Pack/Box",
                        "20 Pack/Box", "30 Pack/Box", "40 Pack/Box", "20 Pack/Box2", "10 Pack/Box", "50 Pack/Box",
                        "70 Pack/Box", "80 Pack/Box", "30 Pack/Box", "10 Pack/Box", "80 Pack/Box", "90 Pack/Box",
                        "110 Pack/Box", "120 Pack/BoxK", "100 Pack/Box", "30 Pack/Box"]
    
    
    var productsStatus = ["Delivered on Thu, April 30th", "Delivered on Thu, April 29th", "Delivered on Fri, April 22nd", "Delivered on Tue, April 15th", "Delivered on Wed, April 10th", "Delivered on Mon, April 30th",
                        "Delivered on Thu, April 30th", "Delivered on Mon, April 27th", "Delivered on Fri, April 29th", "MDelivered on Thu, April 11th", "Delivered on Tue, April 12th", "Delivered on Wed, April 14th",
                        "Delivered on Thu, April 17th", "Delivered on Mon, April 19th", "Delivered on Sat, April 20th", "Delivered on Thu, April 26th", "Delivered on Fri, April 21st", "Delivered on Wed, April 30th",
                        "Delivered on Sat, April 3rd", "Delivered on Thu, April 7th", "Delivered on Fri, April 9th", "Delivered on Thu, April 27th", "Delivered on Wed, April 30th", "Delivered on Thu, April 30th",
                        "Delivered on Wed, April 30th", "Delivered on Fri, April 30th", "Delivered on Sun, April 24th", "Delivered on Thu, April 25th"]
    
    var productImages = ["lmregular100.jpeg", "lmBlueReg.png", "marlborofusebeyond.jpeg", "MarlboroBright.jpeg", "marlbobeyond.jpeg", "fuse.jpeg", "purpleFor.jpeg", "redSoft.jpeg", "marlboroblue.jpeg", "redbe.jpeg", "icebl.jpeg", "touch.jpeg", "pressch.jpeg", "lmbluelbl.jpeg", "chesred.jpeg", "lmgreenlbl.jpeg", "goldtou.jpeg", "intens.jpeg", "orangem.jpeg", "whitemin.jpeg", "lmgreenlbl.jpeg", "menmalyhol.jpeg", "gol.jpeg", "skjolme.jpeg", "yellow.jpeg", "skj.jpeg", "nightttg.jpeg", "bel.jpeg"]
    
    var productOrderId = ["PMIORD129034568", "lPMIORD12903342268", "PMIORD12123568", "PMIORDEDF034568", "PMIORD129W23568", "PMIORD123ED568", "PMIORD12GHY834568", "PMIORD90O90568", "PMIORD12903TY568", "PMIORD129034568", "PMIORD129034568", "PMIORD129034568", "PMIORD1OP9034568", "PMIORD89IOP9674568", "PMIORD12ER674568", "PMIORD129034568", "PMIORD129034568", "PMIORD129034568", "PMIORD129034568", "PMIORDLPO34568", "PMIORD34WER74568", "PMIORD12IOP74568", "PMIORD129674568", "PMIORD1349IOP568", "PMIORD78YUI568", "PMIORD290MNO0568", "PMIORD12GHY568", "PMIORD12ER4568"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        orderHistoryTblView?.delegate = self;
        orderHistoryTblView?.dataSource = self;
        self.orderHistoryTblView?.separatorStyle = UITableViewCellSeparatorStyle.none
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func backPressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func logOutBtnPressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderHistoryCell", for: indexPath) as! OrderHistoryCell
        cell.selectionStyle = .none
        cell.btnTrack?.layer.cornerRadius = 9
        cell.btnTrack?.layer.masksToBounds = true
        cell.lblProductName?.text = productsName[indexPath.row]
        cell.lblProductQuantiry?.text = productsQuantuty[indexPath.row]
        cell.lblProductStatus?.text = productsStatus[indexPath.row]
        cell.lblProductOrderId?.text = productOrderId[indexPath.row]
        cell.imgVwProductImage?.image = UIImage(named: productImages[indexPath.row])
        
        return cell
    }
    

}
