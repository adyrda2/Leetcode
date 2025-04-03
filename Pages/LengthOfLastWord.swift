//
//  LengthOfLastWord.swift
//  
//
//  Created by Angela Dyrda on 4/3/25.
//

import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let last = s.split(separator: " ").last
        guard let last = last else { return 0 }
        
        return last.count
    }
}
