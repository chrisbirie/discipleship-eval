class ChangeEvaluationsRemovePersonId < ActiveRecord::Migration[5.0]
  def change
    remove_column :evaluations, :person_id
  end
end
