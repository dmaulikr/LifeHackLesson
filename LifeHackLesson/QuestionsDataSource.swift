//
//  QuestionsDataSource.swift
//  LifeHackLesson
//
//  Created by Macbook on 19/02/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class QuestionsDataSource: NSObject {
     fileprivate let questions: [Question]
     
     init(questions: [Question]) {
          self.questions = questions
     }
     
     func question(at indexPath: IndexPath) -> Question {
          return questions[indexPath.row]
     }
}

extension QuestionsDataSource: UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return questions.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionCell
          let question = self.question(at: indexPath)
          cell.score = question.score
          cell.title = question.title
          cell.username = question.owner.name
          return cell
     }
}
