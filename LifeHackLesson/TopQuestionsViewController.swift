//
//  TopQuestionsViewController.swift
//  LifeHackLesson
//
//  Created by Macbook on 17/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class TopQuestionsViewController: UIViewController, Stateful {
     
     @IBOutlet weak var tableView: UITableView!
     
     var modelController: ModelController!
     var questionsDataSource: QuestionsDataSource!
     
     override func viewDidLoad() {
          super.viewDidLoad()
          tableView.estimatedRowHeight = 60.0
          tableView.rowHeight = UITableViewAutomaticDimension
     }
     
     override func viewWillAppear(_ animated: Bool) {
          questionsDataSource = QuestionsDataSource(questions: modelController.topQuestions)
          tableView.dataSource = questionsDataSource
          tableView.reloadData()
     
     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let questionViewController = segue.destination as? QuestionViewController,
          let indexPath = tableView.indexPathForSelectedRow {
               passState(to: questionViewController)
               questionViewController.question = questionsDataSource.question(at: indexPath)
          }
     }
     
   }
