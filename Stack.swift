//
//  Stack.swift
//
//  Created by Roman Cernetchi
//  Created on 2021-12-13
//  Version 1.0
//  Copyright (c) 2021 Roman Cernetchi. All rights reserved.
//
//  This is the stack class.
//
// Class that emulates a stack
class Stack<T> {

    // Custom error types
    enum Errors: Error {
        case emptyStackException
    }

    // ArrayList signifying a stack
    private var stackAsArray = [T]()

    // Pushes a number to the stack
    func push(pushElement: T) {
        self.stackAsArray.insert(pushElement, at: 0)
    }

    // Pops the first element in the stack
    func pull() throws -> T {
        if self.stackAsArray.count == 0 {
            throw Errors.emptyStackException
        } else {
            return self.stackAsArray.removeFirst()
        }
    }

    // Displays the stack
    func showStack() {
        self.stackAsArray.forEach { element in print("\(element)")}
    }
}
