//
//  main.swift
//  FirstJediQuestion
//
//  Created by Rostyslav Gress on 03.06.22.
//

import Foundation

let sourceArrays: [[Int]] = [[1, 3, 5, 4, 2],
                             [1, -2, 1, 0, 5],
                             [0, -1, 2, -3, 1]]

let inputNumbers: [Int] = [9, 0, -2]

for i in 0 ..< sourceArrays.count {
    let sourceArray = sourceArrays[i]
    let inputNumber = inputNumbers[i]
    
    if let result = findPars(sourceArray, input: inputNumber) {
        print("Result flag -> \(result.flag.description) First number -> \(result.first) Pair number -> \(result.pair)")
    } else {
        print("Pair not found for input -> \(inputNumber)")
    }
}

func findPars(_ source: [Int], input: Int) -> (flag: Bool, first: Int, pair: Int)? {
    for j in 0 ..< source.count {
        if j + 1 < source.count {
            let firstNumber = source[j]
            let pairNumber  = source[j + 1]
            
            if firstNumber + pairNumber == input {
                return (true, firstNumber, pairNumber)
            }
        }
    }
    
    return nil
}
