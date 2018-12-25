//
//  slipTipViewController.swift
//  tipCalculator
//
//  Created by Joy_Wang on 12/21/18.
//  Copyright © 2018 Joy_Wang. All rights reserved.
//

import UIKit

class slipTipViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
           print(totalLabel.text)
        // Do any additional setup after loading the view.
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
