//
//  QuestionViewController.swift
//  LifeHackLesson
//
//  Created by Macbook on 07/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, Stateful {

     @IBOutlet weak var titleLabel: UILabel!
     @IBOutlet weak var bodyLabel: UILabel!
     @IBOutlet weak var scoreLabel: UILabel!
     @IBOutlet weak var askerImageView: UIImageView!
     @IBOutlet weak var askerNameButton: UIButton!
     
     var modelController: ModelController!
     var question: Question!


         override func viewDidLoad() {
          super.viewDidLoad()
          
          titleLabel.text = question.title
          bodyLabel.text = question.body
          if let question = question {
               updateScore(for: question)
               let asker = question.owner
               askerImageView.image = UIImage(named: asker.profilePictureName)
               askerNameButton.setTitle(asker.name, for: .normal)
        }
     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let userViewController = segue.destination as? UserViewController {
               passState(to: userViewController)
               userViewController.user = question.owner
          }
     }

     
     fileprivate func updateScore(for question: Question) {
          scoreLabel.text = "\(question.score)"
     }
     
     @IBAction func voteUp(_ sender: Any) {
          question.voteUp()
          modelController.updateQuestion(question)
          updateScore(for: question)
     
     }
     
     @IBAction func voteDown(_ sender: Any) {
          question.voteDown()
          modelController.updateQuestion(question)
          updateScore(for: question)
     
     }
}

