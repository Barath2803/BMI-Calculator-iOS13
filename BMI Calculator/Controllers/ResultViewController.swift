//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by OBS 53 on 01/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advise : String?
    var color : UIColor?
    
    @IBOutlet weak var BMIValue: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMIValue.text = bmiValue
        adviseLabel.text = advise
        view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
