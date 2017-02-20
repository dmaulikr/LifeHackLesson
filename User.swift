//
//  User.swift
//  LifeHackLesson
//
//  Created by Macbook on 07/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import Foundation

struct User {
     let name: String
     let aboutMe: String
     let profilePictureName: String
     let reputation: Int
}

struct Question {
     let title: String
     let body: String
     fileprivate (set) var score: Int
     let owner: User
     
     var id: String {
          return owner.name + title
     }
     
     init(title: String, body: String, score: Int, owner: User) {
          self.title = title
          self.body = body
          self.score = score
          self.owner = owner
     }
     
     mutating func voteUp() {
          score += 1
     }
     
     mutating func voteDown() {
          score -= 1
     }

     
}

