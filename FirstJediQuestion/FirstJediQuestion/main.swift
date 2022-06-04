//
//  main.swift
//  FirstJediQuestion
//
//  Created by Rostyslav Gress on 03.06.22.
//

import Foundation

let sourceArrays: [[Int]] = [[0, -1, 2, -3, 1],
                            [1, -2, 1, 0, 5]]

let inputNumbers: [Int] = [-2, 0]

for i in 0 ..< sourceArrays.count {
    let sourceArray = sourceArrays[i]
    let inputNumber = inputNumbers[i]
    
    for j in 0 ..< sourceArray.count {
        if j + 1 < sourceArray.count {
            let firstNumber = sourceArray[j]
            let pairNumber = sourceArray[j + 1]
            
            if firstNumber + pairNumber == inputNumber {
                print("Pair found -> \(firstNumber), \(pairNumber)")
                break
            }
        } else {
            print("Pair not found")
        }
    }
}
