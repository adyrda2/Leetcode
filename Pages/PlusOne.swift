//
//  PlusOne.swift
//  
//
//  Created by Angela Dyrda on 4/3/25.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var someDigits = digits
        if var lastDigit = someDigits.last, lastDigit < 9 {
            var a = lastDigit + 1
            someDigits[someDigits.endIndex-1] = a
            return someDigits

        } else {
            for (index, digit) in someDigits.enumerated().reversed() {
                if digit == 9 {
                    someDigits[index] = 0
                }
                else if digit < 9 {
                    someDigits[index] += 1
                    return someDigits
                }
            }
        }
        return [1] + someDigits
    }
}
