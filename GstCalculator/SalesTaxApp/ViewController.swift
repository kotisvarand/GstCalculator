//
//  ViewController.swift
//  SalesTaxApp
//
//  Created by Mac on 04/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    
   // @IBOutlet weak var salesTaxTxt: UITextField!

    @IBOutlet weak var totalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalPriceLbl.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let gstTax = 0.18
        
        let totalSalesTax = price * gstTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "Rs.\(totalPrice)"
    }
    
}

