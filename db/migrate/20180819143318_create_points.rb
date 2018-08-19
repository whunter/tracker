class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.float :lat
      t.float :long
      t.float :altitude
      t.string :direction
      t.integer :speed
      t.integer :user_id

      t.timestamps
    end
  end
end
