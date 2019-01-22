//
//  borderButton.swift
//  Swoosh App
//
//  Created by Admin on 1/17/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class borderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth=2.0
        self.layer.borderColor=UIColor.white.cgColor
    }

}
