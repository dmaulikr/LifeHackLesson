//
//  RoundedCorners.swift
//  LifeHackLesson
//
//  Created by Macbook on 07/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedCorners: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
     
     didSet {
          setupView()
     }
     
     }
     
     override func prepareForInterfaceBuilder() {
          setupView()
     
     }
     
     func setupView() {
     layer.cornerRadius = cornerRadius
}
}
