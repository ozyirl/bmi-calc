//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        let bmi = weight / pow(height, 2)
        
        print(bmi)
        
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f",bmi)
        self.present(secondVC, animated: true,completion: nil)
    }
    

}

