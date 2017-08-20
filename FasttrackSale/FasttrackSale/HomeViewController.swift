//
//  HomeViewController.swift
//  FasttrackSale
//
//  Created by Bikash Sukla Das on 14/08/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit
import QuartzCore

class HomeViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,ReviewCellDelegate,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var btnLogout: UIButton?
    @IBOutlet var btnPlaceOrder: UIButton?
    @IBOutlet var btnOrderHistory: UIButton?
    @IBOutlet var ivCustomerProfilePic: UIImageView?
    @IBOutlet var lblCustomerName: UILabel?
    @IBOutlet var lblCustomerContactNumber: UILabel?
    @IBOutlet var lblCustomerEmail: UILabel?
    @IBOutlet var colVwProduct: UICollectionView?
    @IBOutlet var VwPromotion: UIView?
    @IBOutlet var tblVwPromotion: UITableView?
    @IBOutlet var vwHomeTopItemBar: UIView?
    @IBOutlet var vwOuterColVw: UIView?

    

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
    
    
    
    var promotionHeaderTitle = ["How Philip Morris, the world's top cigarette maker, is taking Indian tobacco regulators for a ride","Marlboro maker accused of using branded tins to sidestep plain packaging rules","The Only Reason Philip Morris International Boosted Its 2017 Guidance","Philip Morris Kicks Off Marlboro Contract Option","Health Officials Fume as Philip Morris Takes Aim at Young People in India","Forecast and Analysis on Flavor Capsule Cigarettes Market for Period (2017-2027)","No smokes without fire: Philip Morris' 'Heat not burn' tobacco sales under scrutiny","Will Regulatory Challenges Hold Back Philip Morris' Reduced-Risk Strategy?","Philip Morris’s hybrid cigarette gamble in Israel"]
    
    var promotionBodyMessage = ["In internal documents, Philip Morris International is explicit about targeting the country's youth. A key goal is winning the hearts and minds of LA-24 those between legal age, 18, and 24, according to one slide in a 2015 commercial review presentation. As with the point-of-sale ads at kiosks, public health officials say that giving away cigarettes is a violation of India's Cigarettes and Other Tobacco Products Act and its accompanying rules.","Philip Morris, one of the world’s largest tobacco companies, came under fire from MPs and anti-smoking campaigners on the eve of the biggest change in tobacco regulation since the smoking ban From Saturday, retailers will no longer be able to sell branded cigarette packets, as a 12-month grace period to allow tobacco firms to phase out old cartons comes to an end.","On Feb. 22, Philip Morris International made a change to what it believes it will be able to earn during 2017. The tobacco giant said earnings should come in between $4.80 and $4.95 per share, compared to the $4.48 per share in earnings it posted in 2016. That was better than the guidance Philip Morris had given just a couple of weeks earlier, when it announced its fourth-quarter results, representing an increase of $0.10 per share at both ends of the range.","Philip Morris USA is rolling out a new promotional contract option for retailers this month. The Marlboro Leadership Price option will be available to retailers who have level three, four and five contracts with the cigarette manufacturer. According to a spokesman for Altria Client Services, Philip Morris offers retailers five different options for merchandising agreements. Retailers choose which option is right for them depending on how they run their business and their cigarette category. Now, those retailers who have chosen levels three, four and five options have the added option of the new Marlboro Leadership Price, he added. Altria Group Inc. is the parent company of Philip Morris USA.","In internal documents, Philip Morris International is explicit about targeting the country’s youth. A key goal is winning the hearts and minds of LA-24, those between legal age, 18, and 24, according to one slide in a 2015 commercial review presentation. As with the point-of-sale ads at kiosks, public health officials say that giving away cigarettes is a violation of India’s Cigarettes and Other Tobacco Products Act and its accompanying rules. Philip Morris’ marketing strategy for India, which relies heavily on kiosk advertising and social events, is laid out in hundreds of pages of internal documents reviewed by Reuters that cover the period from 2009 to 2016. In them, Philip Morris presents these promotions as key marketing activities.","Flavor capsules embedded in cigarette filters include a small liquid-filled capsule that flavors the cigarette smoke. It is a product innovation allow the smoking population to enhance the smoking experience at chosen time with varieties of flavor such as menthol. Introducing additives such as flavoring agents in tobacco products increasing the market attractiveness. These products are particularly appealing to young people to smoke cigarettes as it provides a fresh kick of flavors. The market for flavor capsule cigarettes is growing owing to increased consumption of new flavored capsule cigarettes such as fruit flavored cigarettes, clove flavored and others.","Multi-national tobacco giant Philip Morris is giving smokers private demonstrations of its heat not burn electronic devices, and insists it is not breaking the law.Through an invitation-only website, the tobacco giant is marketing its Iqos smokeless electronic devices, which heat sticks of tobacco called Heets to release the nicotine that addicts crave without burning it. But tobacco sales are tightly regulated, and Philip Morris' sales strategy has caught the attention of the Ministry of Health.","Nearly all of the success that Philip Morris International (NYSE:PM) has reaped over its history as an independent company has come from the traditional cigarette market. The strength of the Marlboro brand worldwide has been a key asset for the tobacco giant, and other cigarette brands have also contributed to its worldwide popularity. Yet Philip Morris is moving aggressively into the reduced-risk products space, which is an area in which regulatory frameworks haven't entirely caught up to where they are with regular cigarettes. At its recent investor day presentation, Philip Morris President of Reduced-Risk Products Miroslaw Zielinski gave an update on the regulatory situation with reduced-risk products right now and what it will need to do to keep moving forward with products like iQOS and other initiatives in the e-cigarette and e-vapor markets.","Simon Dowding, manager of PMI’s “Smoke-Free” Campaign, says the facility is all about eliminating fire, burning and smoke from its IQOS product. Dowding, originally from Australia, said that when he joined PMI in 2014, “one of the reasons... was very much a journey with a company in marketing to pursue a smokefree future” – though he does not smoke cigarettes or use IQOS. PMI is working hard to get the world to believe that its IQOS product, released in Israel in December after years of massive investment, is a potential harm reducer for smokers who are already hooked. Harm reduction for addicted smokers, if true, would mean that while IQOS could still harm the health of non-smokers, it could potentially be less harmful than regular cigarettes for people who already smoke."]
    
    var promotionImage = ["promo1.jpeg","promo2.jpeg","promo3.jpeg","promo4.jpeg","promo5.jpeg","promo6.jpeg","promo7.jpeg","promo8.jpeg","promo9.jpeg"]
    
    var promotionDate = ["Mon 23rd AUG, 2017","Sun 22rd AUG, 2017","Sat 21st AUG, 2017","Fri 20th AUG, 2017","Thu 19th AUG, 2017","Wed 18th AUG, 2017","Tue 17th AUG, 2017","Mon 16th AUG, 2017","Sun 15th AUG, 2017"]
    
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(HomeViewController.handleRefresh(_:)), for: UIControlEvents.valueChanged)
        refreshControl.tintColor = UIColor.red
        
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        VwPromotion?.backgroundColor = UIColor(patternImage: UIImage(named: "Blackwood_bg.jpeg")!)
        vwHomeTopItemBar?.backgroundColor = UIColor(patternImage: UIImage(named: "topHomeBar.jpeg")!)
        tblVwPromotion?.backgroundColor = UIColor(patternImage: UIImage(named: "bgCell.jpeg")!)
        colVwProduct?.backgroundColor = UIColor(patternImage: UIImage(named: "bgC.jpeg")!)
        vwOuterColVw?.backgroundColor = UIColor(patternImage: UIImage(named: "bgC.jpeg")!)
        self.tblVwPromotion?.addSubview(self.refreshControl)
        self.tblVwPromotion?.separatorStyle = UITableViewCellSeparatorStyle.none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    //MARK:- Buttons actions
    
    @IBAction func logoutPressed(_sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func placeOrderPressed(_sender: UIButton){
        
    }
    
    
    @IBAction func orderHistoryPressed(_sender: UIButton){
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return promotionHeaderTitle.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let  transform =  CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transform
        
            UIView.animate(withDuration: 1.0, animations:{
                cell.alpha = 1.0
                cell.layer.transform = CATransform3DIdentity
            })
        
    }
    
    func handleRefresh(_ refreshControl: UIRefreshControl) {

        //let newproductsName = self.productsName("Montage Laguna Beach")
        //productsName.append(newproductsName)
        //productsName.sort() { $0.name < $1.place }
        
        self.tblVwPromotion?.reloadData()
        refreshControl.endRefreshing()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PromotionCell", for: indexPath) as! PromotionTableViewCell
        cell.selectionStyle = .none
        cell.txtVwPromotionHeader?.text = promotionHeaderTitle[indexPath.row]
        cell.txtVwPromotionBody?.text = promotionBodyMessage[indexPath.row]
        cell.lblPromotionDate?.text = promotionDate[indexPath.row]
        cell.imgVwPromotionImage?.image = UIImage(named: promotionImage[indexPath.row])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsName.count
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return productsName.count
//    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productSelectCell", for: indexPath as IndexPath) as! ProductsSelectCollectionCell
        
        cell.btnAddToCart.layer.cornerRadius = 9
        cell.btnAddToCart.layer.masksToBounds = true
        cell.txtVwProductName.text = productsName[indexPath.item]
        cell.imgVwProductImage?.image = UIImage(named: productImages[indexPath.item])
        cell.cellDelegate = self
        //cell.stprQuantity.value = XXX[indexPath.row].value;
        //cell.txtFldOrderQuantity.text = "\(Int(cell.stprQuantity.value))"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")
    }
    
    func stepperButton(sender: ProductsSelectCollectionCell) {
        if let indexPath = colVwProduct?.indexPath(for: sender){
            print(indexPath)            
            //xxx[sender.tag].value = sender.stprQuantity.value
        }
    }

}
