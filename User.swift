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
     
     mutating func voteUp() {
          score += 1
     }
     
     mutating func voteDown() {
          score -= 1
     }

     
}

