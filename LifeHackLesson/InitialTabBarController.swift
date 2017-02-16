//
//  InitialTabBarController.swift
//  LifeHackLesson
//
//  Created by Macbook on 14/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class InitialTabBarController: UITabBarController, Stateful {

     var modelController: ModelController!

     required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          modelController = ModelController()
          for navigationController in viewControllers as! [UINavigationController] {
               if let statefulViewController = navigationController.viewControllers.first as? Stateful {
                    passState(to: statefulViewController)
               }
          }
     }
}
