//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Ben Mathews on 2/18/17.
//  Copyright © 2017 waldensamkeit. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        let alreadyTipSetting = defaults.double(forKey: "defaultSetting")
        tipControl.selectedSegmentIndex = Int(alreadyTipSetting)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func storeSettings(_ sender: AnyObject) {
    
        let newDefaultTip = tipControl.selectedSegmentIndex
        let defaults = UserDefaults.standard
        defaults.set(newDefaultTip, forKey: "defaultSetting")
        defaults.synchronize()
    }

}
