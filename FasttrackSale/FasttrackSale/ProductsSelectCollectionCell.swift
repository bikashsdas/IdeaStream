//
//  ProductsSelectCollectionCell.swift
//  FasttrackSale
//
//  Created by arnab on 8/20/17.
//  Copyright © 2017 Bikash Sukla Das. All rights reserved.
//

import UIKit

protocol ReviewCellDelegate{
    func stepperButton(sender: ProductsSelectCollectionCell)
}

class ProductsSelectCollectionCell: UICollectionViewCell {

    
    @IBOutlet weak var txtVwProductName: UITextView!
    @IBOutlet weak var lblProductQuantity: UILabel!
    @IBOutlet weak var lblProductUnit: UILabel!
    @IBOutlet weak var txtFldOrderQuantity: UITextField!
    @IBOutlet weak var imgVwProductImage: UIImageView!
    @IBOutlet weak var btnAddToCart: UIButton!
    @IBOutlet weak var stprQuantity: UIStepper!
    
    var stepperValue:Int = 0
    
    var cellDelegate: ReviewCellDelegate?
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        
            cellDelegate?.stepperButton(sender: self)
            stepperValue = Int(stprQuantity.value)
            print(stepperValue)
            txtFldOrderQuantity.text = "\(Int(stprQuantity.value))"        
    }
    
    override func prepareForReuse()
    {
        super.prepareForReuse()
        stprQuantity.value = 0
    }
    
}
