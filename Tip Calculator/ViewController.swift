//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ben Mathews on 2/17/17.
//  Copyright © 2017 waldensamkeit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total2Label: UILabel!
    @IBOutlet weak var total3Label: UILabel!
    @IBOutlet weak var total4Label: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        let defaults = UserDefaults.standard
        let alreadyTipSetting = defaults.double(forKey: "defaultSetting")
        tipControl.selectedSegmentIndex = Int(alreadyTipSetting)
        
        let tipPercentages = [0.15, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalTwo = total / 2
        let totalThree = total / 3
        let totalFour = total / 4
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        total2Label.text = String(format: "$%.2f", totalTwo)
        total3Label.text = String(format: "$%.2f", totalThree)
        total4Label.text = String(format: "$%.2f", totalFour)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalTwo = total / 2
        let totalThree = total / 3
        let totalFour = total / 4
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        total2Label.text = String(format: "$%.2f", totalTwo)
        total3Label.text = String(format: "$%.2f", totalThree)
        total4Label.text = String(format: "$%.2f", totalFour)
    }
}

