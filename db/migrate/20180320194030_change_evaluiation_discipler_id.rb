class ChangeEvaluiationDisciplerId < ActiveRecord::Migration[5.0]
  def change
    rename_column :evaluations, :discipler_id, :person_id
  end
end
