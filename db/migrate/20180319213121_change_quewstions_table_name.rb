class ChangeQuewstionsTableName < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :questions, :question
  end

  def self.down
    rename_table :question, :questions
  end
end
