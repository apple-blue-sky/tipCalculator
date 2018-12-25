//
//  ViewController.swift
//  tipCalculator
//
//  Created by Joy_Wang on 12/20/18.
//  Copyright © 2018 Joy_Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //view
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControls: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var shareTwoLable: UILabel!
    @IBOutlet weak var shareThreeLable: UILabel!
    @IBOutlet weak var shareFourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func tipCalculating(_ sender: Any) {
        let tipPersnetages = [0.18, 0.20, 0.25]
        let tipIndex = tipControls.selectedSegmentIndex
        let billAmount = Double(billField.text!) ?? 0
        let tipAmount = billAmount * tipPersnetages[tipIndex]
        let totalAmount = billAmount + tipAmount
        
        tipLabel.text = String(format: "+  $%.2f", tipAmount)
        totalLabel.text = String(format: "=  $%.2f",totalAmount)
        shareTwoLable.text = String(format: "   $%.2f",totalAmount/2)
        shareThreeLable.text = String(format: "  $%.2f",totalAmount/3)
        shareFourLabel.text = String(format: "  $%.2f",totalAmount/4)
    }
    
    
    @IBAction func onTapShare(_ sender: Any) {
        performSegue(withIdentifier: "splitTipSegue", sender:self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "splitTipSegue"){
            let slipTipViewController = segue.destination as! slipTipViewController
            slipTipViewController.totalLabel.text = totalLabel.text
        }
        
        
    }
    
   

}
