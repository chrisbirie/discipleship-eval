class ChangeDiscipleDisciplerId < ActiveRecord::Migration[5.0]
  def change
    rename_column :disciples, :discipler_id, :person_id
  end
end
