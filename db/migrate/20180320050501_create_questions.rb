class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :question_type

      t.timestamps
    end
  end
end
