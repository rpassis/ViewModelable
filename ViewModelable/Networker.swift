//
//  Networker.swift
//  ViewModelable
//
//  Created by Rogerio de Paula Assis on 6/11/16.
//  Copyright © 2016 Freshmob Pty Ltd. All rights reserved.
//

import Foundation
import Alamofire

protocol Networker {
    func request(_ request: URLRequestConvertible, callback: (Result<Any>) -> ())
}

extension Networker {
    func request(_ request: URLRequestConvertible, callback: @escaping (Result<Any>) -> ()) {
        Alamofire.request(request).responseJSON { (response) in
            callback(response.result)
        }
    }
}
