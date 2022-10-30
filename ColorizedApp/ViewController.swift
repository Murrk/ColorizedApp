//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Маргарита Коновалевская on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets
   
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
    }

// MARK: - IB Actions
   
    @IBAction func sliderAction(_ sender: UISlider) {
        
        switch sender.tag {
        case 0: redLabel.text = String(format: "%.2f", sender.value)
        case 1: greenLabel.text = String(format: "%.2f", sender.value)
        default: blueLabel.text = String(format: "%.2f", sender.value)
        }
        
        setColor()
    }
    
// MARK: - Private Methods
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }

}

