//
//  ViewController.swift
//  Project 4
//
//  Created by Ryan Beckett on 03/04/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var inputMealPrice: UITextField!
    @IBOutlet var lblTipP: UILabel!
    @IBOutlet var lblTotalPriceIncludeTip: UILabel!
    @IBOutlet var lblTotalTip: UILabel!
    @IBOutlet var SldrTipP: UISlider!
    
    var tipPercent:Int = 0
    var mealPrice: Double = 0
    
    let formatter = NSNumberFormatter()
    
    override func viewDidLoad() {
        formatter.numberStyle = .CurrencyStyle
        addToolBar(inputMealPrice)
    }

    @IBAction func sldrMoved(sender: UISlider) {
        calculateTip()
    }
    
    func formatInputAmount() {
        inputMealPrice.text = formatter.stringFromNumber(mealPrice)
        calculateTip()
    }
    
    func calculateTip() {
        tipPercent = Int(SldrTipP.value)
        let tip: Double = ((mealPrice / 100) * Double(tipPercent))
        
        //Displays Tip in %
        lblTipP.text = "Tip (\(tipPercent)%)"
        
        //Displays Tip In $$
        lblTotalTip.text = formatter.stringFromNumber(tip)
        
        //Displays Meal Price + Tip
        lblTotalPriceIncludeTip.text = formatter.stringFromNumber(mealPrice + tip)
    }
    
    
    func addToolBar(textField: UITextField){
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.Default
        toolBar.translucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        
        var doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: "donePressed")
        
        var space = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([space, doneButton], animated: false)
        toolBar.userInteractionEnabled = true
        toolBar.sizeToFit()
        
        textField.delegate = self
        textField.inputAccessoryView = toolBar
    }
    
    func donePressed(){
        view.endEditing(true)
        mealPrice = Double(inputMealPrice.text!)!
        formatInputAmount()
    }

}

