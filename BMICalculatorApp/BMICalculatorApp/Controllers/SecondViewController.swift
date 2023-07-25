//
//  SecondViewController.swift
//  BMICalculatorApp
//
//  Created by salo khizanishvili on 19.05.23.
//

import UIKit

class SecondViewController: UIViewController {

    var bmi: String?
    var advice: String?
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLbl.text = bmi
        adviceLbl.text = advice
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
