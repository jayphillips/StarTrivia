//
//  BlackBackgroundView.swift
//  StarTrivia
//
//  Created by Jay Phillips on 9/11/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class BlackBackgroundView: UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = blackBackground
        layer.cornerRadius = 10
    }
    
}

class BlackBackgroundButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = blackBackground
        layer.cornerRadius = 10
    }
}
