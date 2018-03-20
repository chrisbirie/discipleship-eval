class CreateDisciples < ActiveRecord::Migration[5.0]
  def change
    create_table :disciples do |t|
      t.string :first_name
      t.string :last_name
      t.integer :discipler_id

      t.timestamps
    end
  end
end