//
//  OrderHistoryCell.swift
//  FasttrackSale
//
//  Created by arnab on 8/18/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class OrderHistoryCell: UITableViewCell {

    @IBOutlet var btnTrack: UIButton?
    @IBOutlet var lblProductName: UILabel?
    @IBOutlet var lblProductQuantiry: UILabel?
    @IBOutlet var imgVwProductImage: UIImageView?
    @IBOutlet var lblProductStatus: UILabel?
    @IBOutlet var lblProductOrderId: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
