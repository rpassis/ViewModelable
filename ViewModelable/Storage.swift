//
//  Store.swift
//  ViewModelable
//
//  Created by Rogerio de Paula Assis on 5/11/16.
//  Copyright © 2016 Freshmob Pty Ltd. All rights reserved.
//

import Foundation
import SugarRecordCoreData

public protocol Storage: SugarRecordCoreData.Storage {
    var networker: Networker? { get }
    init(networker: Networker?)
}
