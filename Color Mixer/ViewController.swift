//
//  ViewController.swift
//  Color Mixer
//
//  Created by MacOS Mojave on 13 October, 2019.
//  Copyright © 2019 Shemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var decText : UITextField!
    @IBOutlet var hexText : UITextField!
    @IBOutlet var colorScreen : UILabel!
    
    @IBOutlet var redSlider : UISlider!
    @IBOutlet var greenSlider : UISlider!
    @IBOutlet var blueSlider : UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SliderValueChange(sender: UISlider)
    {
        let r = redSlider.value
        let g = greenSlider.value
        let b = blueSlider.value
        
        decText.text = "\(Int(r)),\(Int(g)),\(Int(b))"
        colorScreen.backgroundColor = UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: 1)
        hexText.text = "#\(String(format: "%02X", Int(r)))\(String(format: "%02X", Int(g)))\(String(format: "%02X", Int(b)))"
    }
    
    
    @IBAction func redIncrease(sender: UIButton)
    {
        if  redSlider.value < 255
        {
            redSlider.value = redSlider.value + 1
            SliderValueChange(sender: redSlider)
        }
    }
    
    @IBAction func redDecrease(sender: UIButton)
    {
        if  redSlider.value > 0
        {
            redSlider.value = redSlider.value - 1
            SliderValueChange(sender: redSlider)
        }
    }
    
    
    @IBAction func greenIncrease(sender: UIButton)
    {
        if greenSlider.value < 255
        {
            greenSlider.value = greenSlider.value + 1
            SliderValueChange(sender: greenSlider)
        }
    }
    
    @IBAction func greenDecrease(sender: UIButton)
    {
        if greenSlider.value > 0
        {
            greenSlider.value = greenSlider.value - 1
            SliderValueChange(sender: greenSlider)
        }
    }
    
    
    @IBAction func blueIncrease(sender: UIButton)
    {
        if blueSlider.value < 255
        {
            blueSlider.value = blueSlider.value + 1
            SliderValueChange(sender: blueSlider)
        }
    }
    
    @IBAction func blueDecrease(sender: UIButton)
    {
        if blueSlider.value > 0
        {
            blueSlider.value = blueSlider.value - 1
            SliderValueChange(sender: blueSlider)
        }
    }

}

