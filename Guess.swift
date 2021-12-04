//
//  Guess.swift
//
//  Created by Ahmad El-khawaldeh
//  Created on 2021-20-11
//  Version 1.0
//  Copyright (c) 2020 MTHS. All rights reserved
//
//  This program is the guessing game
//

import Foundation

let random = Int.random(in: 1..<6)
let number = 6
var turn = 1

while true {
    print("Guess a number between 1 to 6 : ")
    let input = Int(readLine()!)
    if let guess = input {

        if guess > number {
              print("Error pick a number between 1-6")
        } else if guess > random {
            print("You guessed too high")
        } else if guess < random {
            print("You guessed too low")
        } else {
            print("You are correct!!")
            break
        }
    }
    turn = turn + 1
}
print("It took you \(turn) tries.")
