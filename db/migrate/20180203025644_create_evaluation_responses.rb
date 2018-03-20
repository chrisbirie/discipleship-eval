class CreateEvaluationResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluation_responses do |t|
      t.string :evaluation_id
      t.string :question_id
      t.string :response
      t.text :comment

      t.timestamps
    end
  end
end
