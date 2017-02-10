//
//  ModelController.swift
//  LifeHackLesson
//
//  Created by Macbook on 07/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import Foundation

class ModelController {

     var topQuestion: Question = {
          let title = "How to find a hole in a bicycle tire tube quickly"
          let body = "The tube inside by bicycle tire (inner-tube) got a hole and now I can't ride my bike. It isn't a big hole, so I am going to repair it myself. The only problem is that it takes an extremely long time to find the hole. I usually run my finger around the entire tube looking for it, until I eventually find it. This usually takes 20-30 minutes. There must be an better alternative. What is an easy way to quickly find a hole in a tire tube?"
          let owner = User(name: "michaelpri", aboutMe: "Moderator Pro Tempore on Lifehacks.SE", profilePictureName: "michaelpri", reputation: 5276)
          return Question(title: title, body: body, score: 24, owner: owner)
     }()
     
     var user = User(name: "Mike Chapman", aboutMe: "I am the user of this App", profilePictureName: "ProfilePicture", reputation: 120)
}
