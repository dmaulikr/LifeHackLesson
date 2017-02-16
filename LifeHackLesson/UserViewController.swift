//
//  UserViewController.swift
//  LifeHackLesson
//
//  Created by Macbook on 10/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, Stateful {

     @IBOutlet weak var profilePictureImageView: UIImageView!
     @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var reputationLabel: UILabel!
     @IBOutlet weak var aboutMeLabel: UILabel!
     
     var user: User?
     var modelController: ModelController!
     
     
          
     override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          if let user = self.user {
               set(user)
               navigationItem.rightBarButtonItem = nil
          } else {
               set(modelController.user)
          }
     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let destination = segue.destination as? Stateful {
               passState(to: destination)
          }
     }
     
     fileprivate func set(_ user: User) {
          profilePictureImageView.image = UIImage(named: user.profilePictureName)
          nameLabel.text = user.name
          reputationLabel.text = "\(user.reputation)"
          aboutMeLabel.text = user.aboutMe
     }
}
