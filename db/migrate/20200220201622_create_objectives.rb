class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :title
      t.boolean :complete_status, :default => false
      t.integer :user_id

      t.timestamps
    end
  end
end
