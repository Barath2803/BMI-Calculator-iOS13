//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fkg", sender.value)
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        
        calculateBrain.calculateBMI( heightSlider.value, weightSlider.value )
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advise = calculateBrain.getAdvise()
            destinationVC.color = calculateBrain.getColor()
        }
    }
}

