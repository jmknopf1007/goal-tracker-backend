class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :description
      t.string :category
      t.integer :day_count, :default => 0 
      t.integer :objective_id

      t.timestamps
    end
  end
end
