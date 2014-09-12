//
//  ViewController.swift
//  Fibonacci
//
//  Created by Ali Alsayed on 9/10/14.
//  Copyright (c) 2014 Ali Alsayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedValueLabel: UILabel?
    var outputTextView: UITextView?
    var theSlider: UISlider?
    
    var fibo: FibonacciModel = FibonacciModel()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     self.addASlider()
        
        

        
    }
    
   
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func addASlider(){
    
    self.theSlider = UISlider(frame: CGRectMake(60, 244, 200, 20))
    self.view.addSubview(theSlider)
    
    self.theSlider!.minimumValue = 2
    self.theSlider!.maximumValue = 50
    
    var minLabel = UILabel(frame: CGRectMake(235, 205, 40, 40))
    minLabel.text = String (Int(theSlider!.maximumValue))
    self.view.addSubview(minLabel)
    
    self.selectedValueLabel = UILabel(frame: CGRectMake(140, 320, 40, 40))
    self.selectedValueLabel!.text = String(Int(theSlider!.value))
    self.view.addSubview(selectedValueLabel)
    
    self.outputTextView = UITextView(frame: CGRectMake(20, 350, 300, 140))
    self.view.addSubview(self.outputTextView)
    
    self.theSlider!.addTarget(self, action: "sliderValueDidChange", forControlEvents: UIControlEvents.ValueChanged)

    

}

    func sliderValueDidChange () {
        
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


