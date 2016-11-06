//
//  Subscriber.swift
//  ViewModelable
//
//  Created by Rogerio de Paula Assis on 5/11/16.
//  Copyright © 2016 Freshmob Pty Ltd. All rights reserved.
//

import Foundation

public protocol Subscriber {
    var identifier: String { get }
    func update()
}
