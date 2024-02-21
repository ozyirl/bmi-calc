//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain  = CalculatorBrain()
    
    @IBOutlet weak var weightSliderValue: UISlider!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = String(round(sender.value * 100)/100.0)
        heightLabel.text = "\(heightValue)m"
        print ("height value is \(sender.value)")
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = String(format:"%.0f",(sender.value))
        weightLabel.text = "\(weightValue)kg"
        print ("weight value is \(sender.value)")
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = sliderValue.value
        let weight = weightSliderValue.value
        
        calculatorBrain.calculateBMI(height: height, weight:weight)
      
        
       performSegue(withIdentifier: "goToResult", sender: self)
            

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

