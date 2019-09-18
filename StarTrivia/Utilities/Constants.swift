//
//  Constants.swift
//  StarTrivia
//
//  Created by Jay Phillips on 9/11/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

let blackBackground = UIColor.black.withAlphaComponent(0.6).cgColor
let urlBase = "https://swapi.co/api/"
let personURL = urlBase + "people/"

typealias PersonResponseCompletion = (Person?) -> Void

