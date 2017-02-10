//
//  UserViewController.swift
//  LifeHackLesson
//
//  Created by Macbook on 10/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

     @IBOutlet weak var profilePictureImageView: UIImageView!
     @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var reputationLabel: UILabel!
     @IBOutlet weak var aboutMeLabel: UILabel!
     
     fileprivate let modelController = ModelController()
     
     

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = modelController.user
        profilePictureImageView.image = UIImage(named: user.profilePictureName)
        nameLabel.text = user.name
        reputationLabel.text = "\(user.reputation)"
        aboutMeLabel.text = user.aboutMe

     }

        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
