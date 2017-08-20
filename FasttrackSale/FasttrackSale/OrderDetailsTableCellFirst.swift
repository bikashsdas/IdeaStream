//
//  OrderDetailsTableCellFirst.swift
//  FasttrackSale
//
//  Created by arnab on 8/19/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class OrderDetailsTableCellFirst: UITableViewCell {


    @IBOutlet var lblProductOrderId: UILabel?
    @IBOutlet var lblOrderDate: UILabel?
    @IBOutlet var lblOrderTrackingNo: UILabel?
    @IBOutlet var btnTrackOrder: UIButton?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
