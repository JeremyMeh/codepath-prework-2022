//
//  ViewController.swift
//  JeremyCodePathPreWorkTipCalculator
//
//  Created by Jeremy Meharg on 1/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.billAmountTextField.becomeFirstResponder()
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total bny multiplying tip * tip Percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

