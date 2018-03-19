class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.string :discipler_id
      t.string :disciple_id
      t.string :date

      t.timestamps
    end
  end
end
