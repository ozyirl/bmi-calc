//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ozy  on 21/02/24.


import UIKit

class ResultViewController: UIViewController {

    
    var bmiValue: String?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    

    

}
