//
//  Main.swift
//
//  Created by Roman Cernetchi
//  Created on 2021-12-13
//  Version 1.0
//  Copyright (c) 2021 Roman Cernetchi. All rights reserved.
//
//  This program demonstrates a stack.
//
import Foundation

// Takes user input in a loop and permits the user to make multiple commands
// exit = end of program
let aStack = Stack<Int>()

let allowedCommands = ["push", "pull", "show", "exit"]
print("Acceptable Commands:\npush <number> - pull - show - exit")

while true {
    print("> ", terminator: "")
    let userInput = readLine()

    if userInput != nil {
        if userInput!.starts(with: allowedCommands[0]) {
            let userCommandArray = userInput!.components(separatedBy: " ")
            if let userNumber = Int(userCommandArray[1]) {
                aStack.push(pushElement: userNumber)
            } else {
                print("Please enter a valid command.")
            }
        } else if userInput!.starts(with: allowedCommands[1]) {
            do {
                try print("Removed: \(aStack.pull())")
            } catch {
                print("The stack is empty.")
            }
        } else if userInput!.starts(with: allowedCommands[2]) {
            aStack.showStack()
        } else if userInput!.starts(with: allowedCommands[3]) {
            break
        } else {
            print("Please enter a valid command.")
        }
    }
}

print("\nDone.")
