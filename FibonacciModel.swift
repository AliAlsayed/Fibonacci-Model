//
//  FibonacciModel.swift
//  Fibonacci
//
//  Created by Ali Alsayed on 9/10/14.
//  Copyright (c) 2014 Ali Alsayed. All rights reserved.
//

import Foundation

class FibonacciModel {


    
    func calculateFibonacciNumbers(minimum2 endOfSequence:Int) -> Array<Int> {
        
        var sequence: [Int] = [1,1]
        
        for number in 2..<endOfSequence {
            
            var newFibonacciNumber = sequence[number-1] + sequence[number-2]
            sequence.append(newFibonacciNumber)
    }
        
        return sequence
        
    }
    
}