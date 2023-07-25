//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by salo khizanishvili on 19.05.23.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi1: BMI?
    
    func getBMIValue()-> String{
        let bmiToDecimal = String(format: "%.2f", bmi1?.value ?? 0.0)
         return bmiToDecimal
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let BMIValue =  weight/pow(height, 2)
        if(BMIValue < 18.5){
            print("underWeight")
            bmi1 = BMI(value: BMIValue, advice: "Eat More Pies!")
        }
        else if(BMIValue < 24.9){
            bmi1 = BMI(value: BMIValue, advice: "Fit As A Fiddle!")
        }
        else{
            bmi1 = BMI(value: BMIValue, advice: "Eat Less Pies!")
        }
    }
    
    func getAdvice()-> String{
        return bmi1?.advice ?? "No Advice"
    }
}
