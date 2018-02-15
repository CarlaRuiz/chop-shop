//
//  main.swift
//  ChopShop
//
//  Created by Carla Ruiz on 2/1/18.
//  Copyright © 2018 Carla Ruiz. All rights reserved.
//  Keep running until you type quit
//  reading input from colsole
//  4 commands: newitem, printall items stored, quit, help

import Foundation

var isRunning = true

var newItem: [String] = []


func parse(_ input: String) {
    if input == "quit" {
        print("Adios")
        isRunning = false
    } else if input == "newitem" {
        print("Enter new item name: ", terminator:"")
        let newitem = readLine()!
        newItem.append(newitem)
        
        print("newitem name: \(newitem)")
        
    } else if input == "printall" {
        for items in newItem {
            print(items)
        }
    } else if input == "help" {
        print("""
    all possible cmds:
                        newitem
                        printall
                        help
                        quit
    """)
    } else {
        print("Unknown Command: \(input)")
    }
}


while isRunning {
    print("Please enter a command: ", terminator:"")
    let duck = readLine()!
    parse(duck)
}
