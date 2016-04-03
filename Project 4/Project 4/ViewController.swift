//
//  ViewController.swift
//  Project 4
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputMealPrice: UITextField!
    @IBOutlet var lblTipP: UILabel!
    @IBOutlet var lblTotalPriceIncludeTip: UILabel!
    @IBOutlet var lblTotalTip: UILabel!
    @IBOutlet var SldrTipP: UISlider!
    
    var tipPercent:Int = 0
    var mealPrice: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }

    @IBAction func sldrMoved(sender: UISlider) {
        calculateTip()
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
        mealPrice = Double(inputMealPrice.text!)!
        formatInputAmount()
    }
    
    func formatInputAmount(){
        inputMealPrice.text = "$\(String(format: "%.2f", mealPrice))"
        calculateTip()
    }
    
    func calculateTip() {
        tipPercent = Int(SldrTipP.value)
        let tip: Double = ((mealPrice / 100) * Double(tipPercent))
        
        //Displays Tip in %
        lblTipP.text = "Tip (\(tipPercent)%)"
        
        //Displays Tip In $$
        lblTotalTip.text = " $\(String(format: "%.2f", tip))"
        
        //Displays Meal Price + Tip
        lblTotalPriceIncludeTip.text = "$\(String(format: "%.2f", mealPrice + tip))"
    }

}

