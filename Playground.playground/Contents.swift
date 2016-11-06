//: Playground - noun: a place where people can play

import UIKit
import ViewModelable

var str = "Hello, playground"

let urlString = "https://bloodstock.freshmob.net.au"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let sessionConfiguration = URLSessionConfiguration.default
let session = URLSession(configuration: sessionConfiguration)

session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) -> () in
    
}
