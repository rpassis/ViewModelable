//
//  Router.swift
//  ViewModelable
//
//  Created by Rogerio de Paula Assis on 7/11/16.
//  Copyright © 2016 Freshmob Pty Ltd. All rights reserved.
//

import Foundation
import Alamofire

public protocol Router: URLRequestConvertible {
    static var baseUrlString: String { get }
    var method: HTTPMethod { get }
    var path: String { get }
}
