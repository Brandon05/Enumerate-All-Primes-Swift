//: Playground - noun: a place where people can play, but I'm not playing...

import UIKit

func enumeratePrimes(values: Int) -> [Int]? {
    
    var primeNumbers = [Int]()
    var isPrime = true
    
    // Guard against non prime numbers (1>n)
    guard values > 1 else {
        print("not a prime number")
        return []
    }
    
    // First 'for loop' to check all values between 2 and the given Int
    for value in 2...values {
        
        /* Second for loop to divide each value by all numbers in between 1 and itself - 
            a prime number is only divisible by 1 and itself
        */
        
        for number in 2..<value  {
            
            isPrime = true // Reset Flag
            
            if value % number == 0 {
                isPrime = false
                break
            }
            
        }
        
        // Final check & append
        if isPrime == true  {
            primeNumbers.append(value)
        }
        
        //isPrime == true ? primeNumbers.append(value) : nil
        
    }
    
    return primeNumbers
}

enumeratePrimes(values: 15)


























