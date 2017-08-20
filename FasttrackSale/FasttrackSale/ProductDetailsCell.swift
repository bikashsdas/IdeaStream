//
//  ProductDetailsCell.swift
//  FasttrackSale
//
//  Created by arnab on 8/19/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class ProductDetailsCell: UITableViewCell {
    
    
    @IBOutlet var lblProductName: UILabel?
    @IBOutlet var lblProductQuantiry: UILabel?
    @IBOutlet var imgVwProductImage: UIImageView?
    @IBOutlet var btnCancelItem: UIButton?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
