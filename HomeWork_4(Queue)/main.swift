//
//  main.swift
//  HomeWork_4(Queue)
//
//  Created by Владимир Воронов on 11/2/19.
//  Copyright © 2019 Vladimir Oleinikov. All rights reserved.
//

import Foundation


protocol QueueProtocol {
    
    associatedtype S
    
    var count: Int { get }
    
    mutating func pop() -> S?
    
    mutating func push(el: S)

}

struct Queue <T>: QueueProtocol {
    
    private var storage = [T]()
    
    typealias S = T
    
    var count: Int {
        get {
            return storage.count
        }
    }
    
    mutating func pop() -> S? {
        
        if (storage.isEmpty) {
            return nil
        } else {
            return storage.remove(at: 0)
        }
    }
    mutating func push(el: T) {
        
        storage.append(el)
    }
}

var queueOne = Queue<String>()

queueOne.push(el: "One")
queueOne.push(el: "Two")
queueOne.push(el: "Three")

print(queueOne.count)

print(queueOne.pop() ?? "No elements")
print(queueOne.pop() ?? "No elements")
print(queueOne.pop() ?? "No elements")
print(queueOne.pop() ?? "No elements")









