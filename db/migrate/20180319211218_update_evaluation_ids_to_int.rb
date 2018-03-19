class UpdateEvaluationIdsToInt < ActiveRecord::Migration[5.0]
  def change
    change_column :evaluation_responses, :evaluation_id, :integer
    change_column :evaluation_responses, :question_id, :integer
  end
end
