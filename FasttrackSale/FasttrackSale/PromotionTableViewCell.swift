//
//  PromotionTableViewCell.swift
//  FasttrackSale
//
//  Created by arnab on 8/20/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

class PromotionTableViewCell: UITableViewCell {
    
    
    @IBOutlet var imgVwPromotionImage: UIImageView?
    @IBOutlet var txtVwPromotionHeader: UITextView?
    @IBOutlet var txtVwPromotionBody: UITextView?
    @IBOutlet var lblPromotionDate: UILabel?
    @IBOutlet var cntnVwPromotionCell: UIView?

    override func awakeFromNib() {
        super.awakeFromNib()
        cntnVwPromotionCell?.backgroundColor = UIColor(patternImage: UIImage(named: "bgCell.jpeg")!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
