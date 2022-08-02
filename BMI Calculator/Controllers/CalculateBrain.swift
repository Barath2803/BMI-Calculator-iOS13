//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by OBS 53 on 02/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = (weight) / (pow(height,2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advise: "Eat more Pies!" , color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advise: "Fit as a Fiddle!" , color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advise: "Eat less Pies!" , color: UIColor.red)
        }
    }
    
    func getAdvise() -> String {
        return self.bmi?.advise ?? "NO ADVISE..."
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? UIColor.white
    }
    
}
 
