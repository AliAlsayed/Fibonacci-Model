//
//  ViewController.swift
//  Fibonacci
//
//  Created by Ali Alsayed on 9/10/14.
//  Copyright (c) 2014 Ali Alsayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet var theSlider: UISlider!
    
    @IBOutlet weak var selectedValueLabel: UILabel!
    
    @IBOutlet weak var outputTextView: UITextView!
    
    var fibo: FibonacciModel = FibonacciModel()
    
    @IBAction func sliderValueDidChange(sender: AnyObject) {
    
    
        var returnedArray: [Int] = []
        var formattedOutput:String = ""
        
        //Display the updated slider value
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        
         //Calculate the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider!.value))
        
        //Put the elements in a nicely formatted array
        for number in returnedArray {
            
            formattedOutput = formattedOutput + String(number) + ", "
        }
        
        //Update the textfield with the formatted array
        self.outputTextView!.text = formattedOutput
}
    
}


