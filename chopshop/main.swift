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

class Item: NSObject{
    var name: String
    var detail: String
    
    init(name: String, detail: String) {
        self.name = name
        self.detail = detail
        super.init()
    }
    func describe() -> String {
        return "Name: \(name)\nDetail: \(detail)"
    }
}

var isRunning = true

var items: [Item] = []



func parse(_ input: String) {
    if input == "quit" {
        print("Adios")
        isRunning = false
    } else if input == "newitem" {
        print("Enter new item name: ", terminator:"")
        let name = readLine()!
        print("Enter new item detail: ", terminator:"")
        let detail = readLine()!
        var newitem = Item(name: name, detail: detail)
        items.append(newitem)
        print("Added \(newitem.describe())")
        
        
    } else if input == "printall" {
        for item in items {
        print(item.describe())
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


