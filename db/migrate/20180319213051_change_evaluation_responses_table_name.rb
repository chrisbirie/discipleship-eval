class ChangeEvaluationResponsesTableName < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :evaluation_responses, :evaluation_response
  end

  def self.down
    rename_table :evaluation_response, :evaluation_responses
  end
end
