//
//  Stateful.swift
//  LifeHackLesson
//
//  Created by Macbook on 14/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//


protocol Stateful: class {
     var modelController: ModelController! { get set }
}

extension Stateful {
     func passState(to destination: Stateful) {
          destination.modelController = modelController
     }
     
}
