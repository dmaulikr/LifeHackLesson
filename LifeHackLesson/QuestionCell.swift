//
//  QuestionCell.swift
//  LifeHackLesson
//
//  Created by Macbook on 17/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet fileprivate weak var scoreLabel: UILabel!
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    @IBOutlet fileprivate weak var usernameLabel: UILabel!
    
    var score: Int? {
     didSet {
          scoreLabel.text = score != nil ? "\(score!)" : nil
     }
}
    
     var title: String? {
          didSet {
               titleLabel.text = title
          }
     }

     var username: String? {
          didSet {
               usernameLabel.text = username
          }
     }
}
