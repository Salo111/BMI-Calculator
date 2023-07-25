//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by salo khizanishvili on 18.05.23.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var userHeight: UILabel!
    @IBOutlet weak var userWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        userHeight.text = String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        userWeight.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBMI(height:height, weight:weight)
        self.performSegue(withIdentifier: "goToSecondController", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondController"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.bmi = calculatorBrain.getBMIValue()
            secondVC.advice = calculatorBrain.getAdvice()
        }
    }
}

