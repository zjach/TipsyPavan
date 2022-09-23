//
//  ViewController.swift
//  TipsyPavan
//
//  Created by PawanKumar K on 9/21/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var numberOfPeople = 2
    
    @IBAction func tipChanged(_ sender: UIButton) {
                
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if zeroPctButton.isSelected == true {
            print("Selected Tip 0%")
        } else if tenPctButton.isSelected == true {
            print("Selected Tip 10%")
        } else if twentyPctButton.isSelected == true {
            print("Selected Tip 20%")
        }
        
        print("Number of People = \(numberOfPeople)")
        
    }

}

