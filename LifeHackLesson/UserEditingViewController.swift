//
//  UserEditingViewController.swift
//  LifeHackLesson
//
//  Created by Macbook on 10/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class UserEditingViewController: UIViewController {

     @IBOutlet weak var nameTextField: UITextField!
     @IBOutlet weak var aboutMeTextView: UITextView!
     
     @IBAction func save(_ sender: AnyObject) {
          dismiss(animated: true, completion: nil)
          
     }
     
     @IBAction func cancel(_ sender: AnyObject) {
          dismiss(animated: true, completion: nil)
          
     }

    override func viewDidLoad() {
        super.viewDidLoad()

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
