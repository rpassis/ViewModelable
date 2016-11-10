//
//  ViewModelable.swift
//  ViewModelable
//
//  Created by Rogerio de Paula Assis on 5/11/16.
//  Copyright © 2016 Freshmob Pty Ltd. All rights reserved.
//

import Foundation

public protocol ViewModelable {
    init(store: Storage?)
    var store: Storage? { get }
    var subscribers: [Subscriber] { get set }
    mutating func subscribe(subscriber: Subscriber)
    mutating func unsubscribe(subscriber: Subscriber)
    func notifySubscribers()
}

public extension ViewModelable {
    mutating func subscribe(subscriber: Subscriber) {
        subscribers.append(subscriber)
    }
    
    mutating func unsubscribe(subscriber: Subscriber) {
        subscribers = subscribers.filter({ $0.identifier != subscriber.identifier })
    }
    
    func notifySubscribers() {
        subscribers.forEach({ $0.update(viewModel: self) })
    }
}
