EvaluationResponse.delete_all
Evaluation.delete_all
Disciple.delete_all
Person.delete_all
Question.delete_all

Question.create(question: 'Do they read the Bible on their own?', question_type: 'text')
Question.create(question: 'Do you feel like they know how to study and interpret the word? Have they ever learned inductive study, rules of interpretation, or using helps?', question_type: 'gradient')

Person.create(first_name: 'Chris', last_name: 'Birie')
Person.create(first_name: 'Kirk', last_name: 'Jones')

Disciple.create(first_name: 'Kirk', last_name: 'Jones', discipler_id: 1)
Disciple.create(first_name: 'Freddy', last_name: 'Gonzalez', discipler_id: 1)
Disciple.create(first_name: 'Peter', last_name: "O'Connor", discipler_id: 1)
Disciple.create(first_name: 'Angel', last_name: 'Garcia', discipler_id: 1)
Disciple.create(first_name: 'Jimmy', last_name: 'David', discipler_id: 2)
Disciple.create(first_name: 'James', last_name: 'Ferrell', discipler_id: 2)

Evaluation.create(discipler_id: 1, disciple_id: 1)
Evaluation.create(discipler_id: 1, disciple_id: 1)
Evaluation.create(discipler_id: 1, disciple_id: 2)
Evaluation.create(discipler_id: 1, disciple_id: 3)
Evaluation.create(discipler_id: 1, disciple_id: 4)
Evaluation.create(discipler_id: 2, disciple_id: 5)
Evaluation.create(discipler_id: 2, disciple_id: 5)
Evaluation.create(discipler_id: 2, disciple_id: 6)
Evaluation.create(discipler_id: 2, disciple_id: 6)

EvaluationResponse.create(evaluation_id: 1, question_id: 1, response: 'No')
EvaluationResponse.create(evaluation_id: 2, question_id: 1, response: 'Yes')
EvaluationResponse.create(evaluation_id: 3, question_id: 1, response: 'Yes')
EvaluationResponse.create(evaluation_id: 4, question_id: 1, response: 'No')
EvaluationResponse.create(evaluation_id: 5, question_id: 1, response: 'Yes')
EvaluationResponse.create(evaluation_id: 6, question_id: 1, response: 'Yes')
EvaluationResponse.create(evaluation_id: 7, question_id: 1, response: 'No')
EvaluationResponse.create(evaluation_id: 8, question_id: 1, response: 'Inconsistent')
EvaluationResponse.create(evaluation_id: 9, question_id: 1, response: 'Yes')
EvaluationResponse.create(evaluation_id: 1, question_id: 2, response: 'Strong')
EvaluationResponse.create(evaluation_id: 2, question_id: 2, response: 'Okay')
EvaluationResponse.create(evaluation_id: 3, question_id: 2, response: 'Needs More Work')
EvaluationResponse.create(evaluation_id: 4, question_id: 2, response: 'Nothing Yet')
EvaluationResponse.create(evaluation_id: 5, question_id: 2, response: 'Strong')
EvaluationResponse.create(evaluation_id: 6, question_id: 2, response: 'Strong')
EvaluationResponse.create(evaluation_id: 7, question_id: 2, response: 'Strong')
EvaluationResponse.create(evaluation_id: 8, question_id: 2, response: 'Strong')
EvaluationResponse.create(evaluation_id: 9, question_id: 2, response: 'Strong')