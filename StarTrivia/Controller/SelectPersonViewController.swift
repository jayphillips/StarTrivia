//
//  SelectPersonViewController.swift
//  StarTrivia
//
//  Created by Jay Phillips on 9/11/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class SelectPersonViewController: UIViewController {
    
    var personAPI = PersonAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        personAPI.getRandomPersonURLSession()
    }


}

