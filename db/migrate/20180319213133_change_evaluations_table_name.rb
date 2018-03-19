class ChangeEvaluationsTableName < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :evaluations, :evaluation
  end

  def self.down
    rename_table :evaluation, :evaluations
  end
end
