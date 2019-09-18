//
//  SelectPersonViewController.swift
//  StarTrivia
//
//  Created by Jay Phillips on 9/11/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class SelectPersonViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var personAPI = PersonAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func randomButtonPressed(_ sender: Any) {
        let random = Int.random(in: 1...87)
        personAPI.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.nameLabel.text = person.name
                self.heightLabel.text = person.height
                self.massLabel.text = person.mass
                self.hairLabel.text = person.hair
                self.birthYearLabel.text = person.birthYear
                self.genderLabel.text = person.gender
            }
        }
    }
    
}

